package com.yell.base.util;

import com.yell.base.codecategory.app.dto.SimpleCodeDto;
import com.zds.common.lang.exception.BusinessException;
import org.apache.poi.ss.formula.functions.T;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Title: ObjectProperUtil.java
 * @Description: 对象属性工具类
 * @author Away
 * @date 2018/3/30 10:25
 * @copyright
 * @version V1.0
 */
public class ObjectProperUtil {

    private static Logger logger= LoggerFactory.getLogger(ObjectProperUtil.class);
    /**
     * 比较两个对象的属性值改变情况 将source中的不为空的属性值赋值到target中
     * @param source 源对象
     * @param target 目标对象
     * @return
     * @throws BusinessException
     */
    public static <T> T compareAndValue(Object source, T target, boolean isCopyAll, String[] copyFields) throws Exception{
        if(ObjectHelper.isNotEmpty(source)&& ObjectHelper.isNotEmpty(target)){
//            if(source.getClass().getName().equals(target.getClass().getName())){
            if(isCopyAll){
                //当为拷贝全部属性值的时候，最后一个数组参数就为忽略拷贝的属性
                BeanUtils.copyProperties(source,target,copyFields);
                return target;
            }else{
                //当不为拷贝全部属性的时候，最后一个数组参数就为需要拷贝的属性
                target=valueField(source, target,copyFields);
                return target;
            }
//            }else{
//                throw new BusinessException("源对象和目标对象类型不匹配!");
//            }
        }else{
            throw new BusinessException("E10001","ObjectProperUtil比较并赋值属性值出错！参数为空");
        }
    }


    /**
     * 将source的非空属性值复制到target
     * @param source
     * @param target
     * @return
     */
    private static <T> T valueField(Object source,T target,String[] copyFields){
        //得到当前类source所有的属性
        Field[] fieldsSource=source.getClass().getDeclaredFields();
        //得到当前类source父类所有的属性
        Field[] fieldsSourceSuper=source.getClass().getSuperclass().getDeclaredFields();
        for(Field temp:fieldsSource){
            try{
                //设置private属性的可访问性
                temp.setAccessible(true);
                Field targetField=null;
                try{
                    targetField=target.getClass().getDeclaredField(temp.getName());
                }catch (NoSuchFieldException e){
                    logger.info("",e);
                }
                if(ObjectHelper.isEmpty(targetField))continue;
                //设置private属性的可访问性
                targetField.setAccessible(true);
                String descriptor= Modifier.toString(temp.getModifiers());//获得其属性的修饰
                //如果源对象当前属性值不为空，并且属性不为静态属性，并且与目标对象属性值不同
                if(!descriptor.contains("static")&& ObjectHelper.isNotEmpty(temp.get(source))&& ObjectHelper.isNotEmpty(targetField.get(target))
                        &&!targetField.get(target).toString().equals(temp.get(source).toString())
                        ||!descriptor.contains("static")&& ObjectHelper.isNotEmpty(temp.get(source))&& ObjectHelper.isEmpty(targetField.get(target))){
                    targetField.set(target,temp.get(source));
                }
                //如果包含复制字段数组不为空
                if(ObjectHelper.isNotEmpty(copyFields)){
                    for(int i=0;i<copyFields.length;i++){
                        //如果包含复制字段等于当前字段
                        if(copyFields[i].equals(temp.getName())){
                            targetField.set(target,temp.get(source));
                        }
                    }
                }
            }catch (Exception e){
                e.printStackTrace();
                logger.error("ObjectProperUtil-compareAndValue出错",e);
            }
        }
        //父类属性
        for(Field temp:fieldsSourceSuper){
            try{
                //设置private属性的可访问性
                temp.setAccessible(true);
                Field targetFieldSuper=null;
                try{
                    targetFieldSuper=target.getClass().getSuperclass().getDeclaredField(temp.getName());
                }catch (NoSuchFieldException e){
                    logger.info("",e);
                }
                if(ObjectHelper.isEmpty(targetFieldSuper))continue;
                //设置private属性的可访问性
                targetFieldSuper.setAccessible(true);
                String descriptor= Modifier.toString(temp.getModifiers());//获得其属性的修饰
                //如果源对象当前属性值不为空，并且属性不为静态属性，并且与目标对象属性值不同
                if(!descriptor.contains("static")&& ObjectHelper.isNotEmpty(temp.get(source))&& ObjectHelper.isNotEmpty(targetFieldSuper.get(target))
                        &&!targetFieldSuper.get(target).toString().equals(temp.get(source).toString())
                        ||!descriptor.contains("static")&& ObjectHelper.isNotEmpty(temp.get(source))&& ObjectHelper.isEmpty(targetFieldSuper.get(target))){
                    targetFieldSuper.set(target,temp.get(source));
                }
                //如果包含复制字段数组不为空
                if(ObjectHelper.isNotEmpty(copyFields)){
                    for(int i=0;i<copyFields.length;i++){
                        //如果包含复制字段等于当前字段
                        if(copyFields[i].equals(temp.getName())){
                            targetFieldSuper.set(target,temp.get(source));
                        }
                    }
                }
            }catch (Exception e){
                e.printStackTrace();
                logger.error("ObjectProperUtil-compareAndValue出错",e);
            }
        }
        return target;
    }
    /**
     * 通过属性名得到属性值
     * @param fieldName 属性名
     * @param object 操作对象
     * @return 属性值
     */
    private static Object getFieldValueByName(String fieldName,Object object){
        try {
            String firstLetter = fieldName.substring(0, 1).toUpperCase();
            String getter = "get" + firstLetter + fieldName.substring(1);
            Method method = object.getClass().getMethod(getter, new Class[] {});
            Object value = method.invoke(object, new Object[] {});
            return value;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取属性类型(type)，属性名(name)，属性值(value)的map组成的list
     * */
    public static List<Map<String,Object>> getFieldsInfo(Object o){
        Field[] fields=((Class) o).getDeclaredFields();
        List<Map<String,Object>> list = new ArrayList<>();
        Map<String,Object> infoMap=null;
        for(int i=0;i<fields.length;i++){
            infoMap = new HashMap<String,Object>();
            infoMap.put("type", fields[i].getType().toString());
            infoMap.put("name", fields[i].getName());
            list.add(infoMap);
        }
        return list;
    }
    /**
     * 获取属性类型(type)，属性名(name)，属性值(value)的map组成的list
     * */
    public static List<Map<String,Object>> getFieldsInfo(Class<T> tClass){
        Field[] fields=tClass.getDeclaredFields();
        List<Map<String,Object>> list = new ArrayList<>();
        Map<String,Object> infoMap=null;
        for(int i=0;i<fields.length;i++){
            infoMap = new HashMap<String,Object>();
            infoMap.put("type", fields[i].getType().toString());
            infoMap.put("name", fields[i].getName());
            list.add(infoMap);
        }
        return list;
    }

    /**
     * 获取属性名，属性值键值对
     * */
    public static Map<String,Object> getFiledsNameAndVal(Object o){
        Field[] fields=o.getClass().getDeclaredFields();
        Map<String,Object> infoMap=new HashMap<>();
        for(int i=0;i<fields.length;i++){
            infoMap.put(fields[i].getName(), getFieldValueByName(fields[i].getName(), o));
        }
        return infoMap;
    }
    public static void main(String[] args){
        List<Map<String,Object>> filedsInfo=getFieldsInfo(new SimpleCodeDto());
        System.out.println(filedsInfo);
//        List<Map<String,Object>>data=ObjectProperUtil.getFiledsInfo(busiForm);
    }
}
