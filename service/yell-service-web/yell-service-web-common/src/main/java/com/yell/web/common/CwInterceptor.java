package com.yell.web.common;

import com.yell.base.CPContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 */
public class CwInterceptor implements HandlerInterceptor {
    public static Logger logger = LoggerFactory.getLogger(CwInterceptor.class);
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        logger.info("进入拦截器：{},{},{},UserId:{}",request.getHeader("X-Real-IP"),request.getRequestURI(),CPContext.getContext().toString(),CPContext.getContext().getId());
        request.setCharacterEncoding("UTF-8");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        logger.info("离开拦截器：{},{},{},UserId:{}",request.getHeader("X-Real-IP"),request.getRequestURI(),CPContext.getContext().toString(),CPContext.getContext().getId());
        CPContext.removeContext();
    }
}
