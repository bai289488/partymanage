package com.party.feng.partymanage.comm;


public enum  PartyError implements CommError{
    /***
     * 
     * @author admin  
     * @param null
     * @return   
     */  
    USER_NO_EXEIT(20001,"用户不存在"),
    PARAMATER_VALIDATION_ERROR(10001,"参数异常"),
    UNKNOW_VALUE_ERROR(00001,"未知异常")
    ;

    private int erroCode;
    private String erroMessage;

    private PartyError(int erroCode,String erroMessage){
        this.erroCode = erroCode;
        this.erroMessage = erroMessage;
    }
    @Override
    public int getErrCode() {
        return this.erroCode;
    }

    @Override
    public String getErrMessage() {
        return this.erroMessage;
    }

    @Override
    public CommError setErrMessage(String errMessage) {
        this.erroMessage = errMessage;
        return this;
    }
}
