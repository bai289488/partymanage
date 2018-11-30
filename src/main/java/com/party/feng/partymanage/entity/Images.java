package com.party.feng.partymanage.entity;

/**
 * @author admin
 * @version 2018/11/30
 */
public class Images {

    private Integer iid;

    private String iname;

    private String iurl;

    private Integer istatue;

    private Integer parentid;

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    public Integer getIid() {
        return iid;
    }

    public void setIid(Integer iid) {
        this.iid = iid;
    }

    public String getIname() {
        return iname;
    }

    public void setIname(String iname) {
        this.iname = iname;
    }

    public String getIurl() {
        return iurl;
    }

    public void setIurl(String iurl) {
        this.iurl = iurl;
    }

    public Integer getIstatue() {
        return istatue;
    }

    public void setIstatue(Integer istatue) {
        this.istatue = istatue;
    }
}
