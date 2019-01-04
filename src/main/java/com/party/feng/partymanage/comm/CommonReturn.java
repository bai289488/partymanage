package com.party.feng.partymanage.comm;

/**
 * @author admin
 * @version 2018/12/12
 */

public class CommonReturn {

    private String statue;

    private Object data;

    public CommonReturn() {
    }

    public CommonReturn(String statue, Object data) {
        this.statue = statue;
        this.data = data;
    }

    public static CommonReturn create(String statue,Object data){
        return new CommonReturn(statue,data);
    }
}
