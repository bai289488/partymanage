package com.party.feng.partymanage.comm;

/**
 * @author admin
 * @version 2018/12/12
 */
public class PartyException extends Exception implements CommError {

    private CommError commError;

    public PartyException(CommError commError){
        super();
        this.commError = commError;
    }

    public PartyException(CommError commError,String erroMessage){
        super();
        this.commError = commError;
        this.setErrMessage(erroMessage);
    }

    @Override
    public int getErrCode() {
        return this.getErrCode();
    }

    @Override
    public String getErrMessage() {
        return this.getMessage();
    }

    @Override
    public CommError setErrMessage(String errMessage) {
        return this.setErrMessage(errMessage);
    }
}
