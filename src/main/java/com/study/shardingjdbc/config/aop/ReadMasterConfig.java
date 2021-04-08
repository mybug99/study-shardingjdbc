package com.study.shardingjdbc.config.aop;

import lombok.extern.slf4j.Slf4j;
import org.apache.shardingsphere.api.hint.HintManager;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author Ryan
 * @Description Sharding-jdbc，强制路由功能，在主进行读取数据
 * @createTime 2021年03月29日
 */
@Slf4j
@Component
@Aspect
public class ReadMasterConfig {
    @Pointcut("@annotation(com.study.shardingjdbc.annotation.ReadMaster)")
    public void readMaster() {
    }

    @Around(value = "readMaster()")
    public Object readMasterAround(ProceedingJoinPoint point) {
        Object proceed =null;
        try {
            log.info("强制走主节点----开始");
            HintManager hintManager = HintManager.getInstance();
            hintManager.setMasterRouteOnly();
            proceed = point.proceed();
            hintManager.close();
            log.info("强制走主节点----结束");
        } catch (Throwable throwable) {
            log.info("发生异常：{}", throwable.getMessage());
            throwable.printStackTrace();
        }
        return proceed;
    }

}
