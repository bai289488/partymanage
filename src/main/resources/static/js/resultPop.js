/* 弹框 */
function successToolTipDiaLog (str) {
    hwqToolTipDiaLog("img/correct.png", str);
}
function erroresToolTipDiaLog (str) {
    hwqToolTipDiaLog("img/close.png", str);
}
function hwqToolTipDiaLog (src, str) {
    $("#hwq_tool_tip > div > span").html(str);
    $("#hwq_tool_tip > div > img").attr("src", src);
    $("#hwq_tool_tip").css({ "opacity": 1, "display": "block"});
    $("#hwq_tool_tip").animate({ "opacity": 0 }, 1500, "swing",function () {
        $("#hwq_tool_tip").hide();
    });
}

/**
 * 非空验证
 * @param name
 * @param text
 * @returns
 */
function validateStrNotNull(name,text){
	if(text==null || text=='' || typeof(text)=='undefined'){
		erroresToolTipDiaLog(name+"不能为空！");
		return false;
	}else{
		return true;
	}
}