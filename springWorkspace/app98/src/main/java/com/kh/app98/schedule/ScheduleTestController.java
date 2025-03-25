package com.kh.app98.schedule;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

// @Component
public class ScheduleTestController {

    @Scheduled(fixedDelay = 10000)
    public void m01(){
        System.out.println("schedule m01~~");
    }
}
