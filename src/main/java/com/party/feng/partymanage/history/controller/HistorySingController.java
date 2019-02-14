package com.party.feng.partymanage.history.controller;

import com.party.feng.partymanage.comm.HistoryRunnable;
import com.party.feng.partymanage.history.service.HistorySingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.concurrent.ExecutorService;

/**
 * @author admin
 * @version 2019/1/22
 */
@Controller
@RequestMapping("history")
public class HistorySingController {

//    @Autowired
//    ExecutorService executorService;

    @Autowired
    private HistorySingService historySingService;

    @RequestMapping("/addSing")
    @ResponseBody
    public String addSing(){
      Runnable ru = new HistoryRunnable(historySingService){
      };
      Thread th = new Thread(ru);
      th.start();
      return "success";
    }
}
