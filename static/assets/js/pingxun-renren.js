// var httpUrl = "https://www.pingxundata.com:8443";//正式环境
var httpUrl = "http://karl-leo.imwork.net/apis";//本地开发环境
// var httpUrl = "http://192.168.1.100:1234";//测试环境
/*菜单及登录*/
var loginUrl = {url: httpUrl + "/login", type: "post"};//登录
var RegisterUrl = {url: httpUrl + "/common/passwordRegister.json", type: "post"};//注册
var LoginOutUrl = {url: httpUrl + "/common/logout.json", type: "get"};//退出登录
var getMenu = {url: httpUrl + "/front/menu/getMenu.json", type: "get"};//菜单获取
var getSysMenuList = {url: httpUrl + "/front/menu/getSysMenuList.json", type: "get"};//获取系统菜单
var editSysMenuList = {url: httpUrl + "/front/menu/editSysMenu.json", type: "post"};//编辑系统菜单
var getAllMenu = {url: httpUrl + "/front/menu/getAllMenu.json", type: "get"};//获取所有菜单
var deleteSysMenuList = {url: httpUrl + "/front/menu/deleteSysMenu.json", type: "get"};//删除系统菜单
var getMenuWithUserId = {url: httpUrl + "/front/menu/getMenuWithUserId.json", type: "get"};//根据指定用户ID获得用户的菜单权限配置
var UserFunAuthPage = {url: httpUrl + "/front/menu/getUserFunAuthPage.json", type: "get"};//根据指定用户ID获得用户的功能权限配置
var AllFunctionUrl = {url: httpUrl + "/front/menu/getAllFunctionUrl.json", type: "get"};//获得所有功能地址
var saveUserMenuAuth = {url: httpUrl + "/front/menu/saveUserMenuAuth.json", type: "post"};//保存用户菜单权限
var saveUserFunAuth = {url: httpUrl + "/front/menu/saveUserFunAuth.json", type: "post"};//保存用户功能权限
var DeleteUserFunByIds = {url: httpUrl + "/front/menu/deleteByIds.json", type: "get"};//删除用户功能权限
var deleteUserMenuAuthByIds = {url: httpUrl + "/front/menu/deleteUserMenuAuthByIds.json", type: "get"};//删除用户菜单权限

//发布选项
var saveOrUpdatePublishOptions = {url: httpUrl + "/front/publish/saveOrUpdatePublishOptions.json", type: "post"};//新增或者修改
var PagePublishOptions = {url: httpUrl + "/front/publish/findPagePublishOptions.json", type: "get"};//获取配置列表
var deletePublishOptions = {url: httpUrl + "/front/publish/deletePublishOptions.json", type: "get"};//获取配置列表


//用户
var getUsersPageUrl = {url: httpUrl + "/front/userInfo/getUsersPageWithoutUser.json", type: "post"};
var findByUserIdUrl = {url: httpUrl + "/front/userInfo/getCurrentUserInfo.json", type: "get"};
var deleteUserUrl = {url: httpUrl + "/backend/user/deleteUser.json", type: "get"};
var getUserInfoUrl = {url:httpUrl + "/front/userInfo/getUserInfoByUserId.json",type:"get"};
var updateUserRoleUrl = {url:httpUrl + "/front/userInfo/updateUserRole.json",type:"post"};
//角色
var roleListUrl = {url: httpUrl + "/front/role/getRoleConfList.json", type: "get"};
var saveOrUpdateRoleUrl = {url: httpUrl + "/front/role/saveOrUpdateRole.json", type: "post"};
var getRoleConfPageUrl = {url: httpUrl + "/front/role/getRoleConfPage.json", type: "get"};
var deleteRoleUrl = {url: httpUrl + "/front/role/deleteRole.json", type: "get"};
var getConfdMenuUrl = {url:httpUrl + "/front/role/getConfdMenu.json",type:"get"};
var batchSaveMenuConfUrl = {url:httpUrl + "/front/role/batchSaveMenuConf.json",type:"post"};
var batchDeleteMenuConfUrl = {url:httpUrl + "/front/role/batchDeleteMenuConf.json",type:"post"};

//视频
var saveOrUpdateVideoTypeUrl={url:httpUrl+"/backend/vtype/saveOrUpdateType.json",type:"post"};
var getAllVideoTypeUrl={url:httpUrl+"/backend/vtype/getAllVideoType.json",type:"get"};
var deleteVideoTypeUrl={url:httpUrl+"/backend/vtype/deleteVideoType.json",type:"get"};
//媒体
var uploadFileUrl={url:httpUrl+"/common/uploadFile.json",type:"post"};
var batchSaveOrUpdateMeida={url:httpUrl+"/backend/media/batchSaveOrUpdateMedia.json",type:"post"};
var editMediaUrl={url:httpUrl+"/backend/media/editMedia.json",type:"post"};
var findMediaByPageUrl={url:httpUrl+"/backend/media/findMediaByPage.json",type:"post"};
var deleteMediaUrl={url:httpUrl+"/backend/media/deleteMedia.json",type:"get"};

/*初始元件注入*/
$(document).ready(function () {
    $("body").append("<div id='errorDialog' class='modal fade' tabindex='-1' role='dialog' aria-hidden='true'> " +
        "<div class='modal-dialog'> " +
        "<div class='modal-body'> " +
        "<div class='alert alert-big alert-redbrown alert-dismissable fade in'> " +
        "<h4 style='text-align: center'><strong>错误!</strong></h4> " +
        "<p id='elements_errorMsg' style='text-align: center;margin-top: 30px'> </p> " +
        "</div> " +
        "</div> " +
        "</div>" +
        "</div>");

    $("body").append("<div id='confirmDialog' class='modal fade' tabindex='-1' role='dialog' aria-hidden='true'> " +
        "<div class='modal-dialog'> " +
        "<div class='modal-body'> " +
        "<div class='alert alert-red custom-labels'> " +
        "<h4>确认</h4><br>" +
        "<p><h4 id='confirmMsg'></h4></p><br>" +
        "<div >" +
        "<button type='button' id='confirmDiaConfirmBtn' class='btn btn-primary'>确定</button>" +
        "<button type='button' id='confirmDiaCancelBtn' class='btn btn-default margin-left-15'>取消</button>" +
        "</div>" +
        "</div>" +
        "</div> " +
        "</div>" +
        "</div>");
    $("body").append("<div id='successDialog' class='modal fade' tabindex='-1' role='dialog' aria-hidden='true'> " +
        "<div class='modal-dialog'> " +
        "<div class='modal-body'> " +
        "<div class='notification notification-success custom-labels'> " +
        "<h4>成功</h4><br>" +
        "<p><h4 id='successDialog-successMsg'></h4></p><br>" +
        "<div >" +
        "<button type='button' id='successDiaConfirmBtn' class='btn btn-primary'>确定</button>" +
        "</div>" +
        "</div>" +
        "</div> " +
        "</div>" +
        "</div>");
});
var PXF = {
    ajax: function (urlObj, formDom, sFun, eFun) {
        var paraData;
        if (formDom instanceof jQuery) {
            //如果为POST方法
            if (urlObj.type.indexOf("post") != -1) {
                var params = formDom.serializeArray();
                var values = {};
                for (var item in params) {
                    values[params[item].name] = params[item].value;
                }
                values["type"] = "manager";
                paraData = JSON.stringify(values);
                paraData = paraData.replace(/\r' /g, "' ");
            } else {
                if (formDom != null) paraData = formDom.serialize();
            }
        } else {
            if (formDom == null) {
                paraData = {}
            } else {
                paraData = formDom;
            }
        }
        $.ajax({
            url: urlObj.url,
            type: urlObj.type,
            // crossDomain: true,
            // xhrFields: {withCredentials: true},
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            data: paraData,
            headers: {
                "Authorization": window.localStorage.getItem("token")
            },
            success: function (data) {
                $("#loader").fadeOut(300);
                $(".mask").fadeOut(300);
                if (data.success) {
                    sFun(data);
                } else {
                    PXF.errorDialog(data.message);
                    if (data.code == 100000) {
                        location.href = "login.html";
                    }
                }
            },
            error: function (data) {
                $("#loader").fadeOut(300);
                $(".mask").fadeOut(300);
                PXF.errorDialog("系统出错");
                eFun(data);
            },
            beforeSend: function () {
                $(".mask").show();
                $("#loader").fadeIn();
            }
        });
    },
    errorDialog: function (msg) {
        var errorMsgObj = $("#elements_errorMsg");
        errorMsgObj.text(msg);
        $("#errorDialog").modal();
    },
    confirmDialog: function (msg, confirmFun) {
        //绑定事件之前先解绑，避免多次绑定，多次执行方法体
        $("body").off("click", "#confirmDiaConfirmBtn").on("click", "#confirmDiaConfirmBtn", function (event) {
            confirmFun();
            $("#confirmDialog").modal("hide");
            event.stopPropagation();
        });
        $("body").off("click", "#confirmDiaCancelBtn").on("click", "#confirmDiaCancelBtn", function (event) {
            $("#confirmDialog").modal("hide");
            event.stopPropagation();
        });
        var confimMsgObj = $("#confirmMsg");
        confimMsgObj.text(msg);
        /*backdrop:static时,空白处不关闭.
          keyboard:false时,esc键盘不关闭.*/
        $("#confirmDialog").modal({backdrop: 'static', keyboard: false});
    },
    successDialog: function (msg, confirmFun) {
        //绑定事件之前先解绑，避免多次绑定，多次执行方法体
        $("body").off("click", "#successDiaConfirmBtn").on("click", "#successDiaConfirmBtn", function (event) {
            confirmFun();
            $("#successDialog").modal("hide");
            event.stopPropagation();
        });
        var successDialogMsg = $("#successDialog-successMsg");
        successDialogMsg.text(msg);
        /*backdrop:static时,空白处不关闭.
          keyboard:false时,esc键盘不关闭.*/
        $("#successDialog").modal({backdrop: 'static', keyboard: false});
    },
    tree: function (dataUrl, target, settings, initialize, params) {
        this.ajax(dataUrl, params, function (data) {
            var defaultData = data.data;
            var sett = {data: defaultData};
            for (key in settings) {
                sett[key] = settings[key];
            }
            var $allMenuTree = target.treeview(sett);
            if (initialize != undefined) {
                initialize($allMenuTree);
            }
            release();
            return $allMenuTree;
        }, function () {
        })
    },
    timestampToTime: function (timestamp) {

        var now = new Date(timestamp);
        var   year=now.getFullYear();
        var   month=now.getMonth()+1;
        var   date=now.getDate();
        var   hour=now.getHours();
        var   minute=now.getMinutes();
        var   second=now.getSeconds();
        return   year+"-"+month+"-"+date;
    }
};

/*DataTables表格常量*/
var CONSTANT = {
    DATA_TABLES: {
        DEFAULT_OPTION: { //DataTables初始化选项
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "每页 _MENU_ 项",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "当前显示第 _START_ 至 _END_ 项，共 _TOTAL_ 项。",
                "sInfoEmpty": "当前显示第 0 至 0 项，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页",
                    "sJump": "跳转"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            autoWidth: false,   //禁用自动调整列宽
            lengthChange: false,//是否允许用户改变表格每页显示的记录数
            iDisplayLength: 15,//默认条数（待验证）
            stripeClasses: ["odd", "even"],//为奇偶行加上样式，兼容不支持CSS伪类的场合
            processing: true,  //隐藏加载提示,自行处理
            serverSide: true,   //启用服务器端分页
            ordering: true,
            searching: false    //禁用原生搜索
        },
        COLUMN: {
            CHECKBOX: { //复选框单元格
                className: "td-checkbox",
                orderable: false,
                width: "30px",
                data: null,
                render: function (data, type, row, meta) {
                    return '<input type="checkbox" class="iCheck">';
                }
            }
        },
        RENDER: {   //常用render可以抽取出来，如日期时间、头像等
            ELLIPSIS: function (data, type, row, meta) {
                data = data || "";
                return '<span title="' + data + '">' + data + '</span>';
            }
        }
    }
};

var AllMediaType={};
