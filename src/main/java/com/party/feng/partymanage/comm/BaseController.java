package com.party.feng.partymanage.comm;



import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author admin
 * @version 2018/12/12
 */
@Controller
public class BaseController {

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public Object handlerException(HttpServletRequest request,Exception ex){
        Map<String,Object> responseDate = new HashMap<>();
        Boolean s = ex instanceof PartyException;
        if(s){
           PartyException pa = (PartyException)ex;
           responseDate.put("errCode",pa.getErrCode());
           responseDate.put("errMessage",pa.getErrMessage());
        }else{
            responseDate.put("errCode",PartyError.UNKNOW_VALUE_ERROR.getErrCode());
            responseDate.put("errMessage",PartyError.UNKNOW_VALUE_ERROR.getErrMessage());
        }
        return CommonReturn.create("fail",responseDate);
    }


}
