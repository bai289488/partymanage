package com.party.feng.partymanage.history.service;

import com.party.feng.partymanage.entity.HistorySing;

import java.util.List;

/**
 * @author admin
 * @version 2019/1/21
 */
public interface HistorySingService {

    List<HistorySing> getList();

    String addHistorySing(HistorySing historySing);
}
