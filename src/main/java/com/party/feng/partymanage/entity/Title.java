package com.party.feng.partymanage.entity;

import java.util.Date;

/**
 * @author admin
 * @version 2018/11/29
 */

public class Title {

    private Integer tid;

    private String tname;

    private Date ttime;

    private Integer tstatue;

    private String turl;

    public String getTurl() {
        return turl;
    }

    public void setTurl(String turl) {
        this.turl = turl;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Date getTtime() {
        return ttime;
    }

    public void setTtime(Date ttime) {
        this.ttime = ttime;
    }

    public Integer getTstatue() {
        return tstatue;
    }

    public void setTstatue(Integer tstatue) {
        this.tstatue = tstatue;
    }
}
