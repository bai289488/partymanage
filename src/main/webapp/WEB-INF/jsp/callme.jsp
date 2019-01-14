<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>Title</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <style type="text/css">
        .logo{
            padding:0;
        }

        #mycarousel{
            margin: 50px;
        }
        #navbar-collapse{
            margin-top: 0;
        }
        #footer{
            background-color: #666;
            border-top:1px solid #ccc;
            padding: 20px;
            text-align: center;
        }
        .carousel-inner img{
            margin: 0 auto;
        }
        .carousel-control{
            font-size: 100px;
            line-height: 440px;
        }
        .jumbotron{
            background-image: url('img/18.jpg');
            color: #ccc;
        }
        .jumbotron h1{
            font-size: 36px;
        }
        .jumbotron h4{
            font-size: 18px;
        }
        #about{
            background-color: #eee;
            padding: 40px 0;
        }
        #about a{
            color: #0059B2;
        }
        #about h3{
            color: #333;
            border-bottom: 1px solid #ccc;
            padding: 20px 0;
            margin: 0 0 10px 0;
        }
        #about p{
            line-height: 2;
            font-size: 16px;

        }

    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="${first.turl}" class="navbar-brand logo"><img src="img/345.jpg" style="width: 45px;height: 45px"/></a>
            <c:if test="${users == null}">
                <a href="" class="navbar-brand dis" data-toggle="modal" data-target="#insertVideo">登陆</a>
                <a href="javascript:void(0);" class="navbar-brand dis" >|</a>
                <a href="" class="navbar-brand dis" data-toggle="modal" data-target="#regisVideo">注册</a>
            </c:if>
            <c:if test="${users != null}">
                <a href="javascript:void(0);" class="navbar-brand ">欢迎您:${users}</a>
            </c:if>
            <<input type="hidden" id="uus" value="${users}"/>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <c:forEach items="${title}" var="ti">
                    <c:if test="${ti.tid == 6}">
                        <li class="active"><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                    <c:if test="${ti.tid != 6}">
                        <li><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
    </div>
</nav>
<div class="jumbotron">
    <div class="container">
        <hgroup>
            <h1>关于</h1>
            <h4>公司北京简介。。。</h4>
        </hgroup>
    </div>
</div>

<div id="about">
    <div class="container">
        <div class="row">
            <div class="col-md-3 hidden-sm hidden-xs">
                <div class="list-group">
                    <a href="#1" class="list-group-item">1.公司介绍</a>
                    <a href="#2" class="list-group-item" >2.加入我们</a>
                    <a href="#3" class="list-group-item">3.公司远景</a>
                    <a href="#4" class="list-group-item active" id="callas" >4.联系我们</a>
                    <a href="#5" class="list-group-item active" id="callme" >5.联系admin</a>
                </div>
            </div>
            <div class="col-md-9 about">
                <div class="row">
                    <div class="col-md-14"><span class="input-group-addon" style="text-align: center;background-color: #5bc0de">聊天室</span></div>
                    <div class="col-md-4" style="background-color: #5cb85c">
                        <div class="row">
                            <div class="col-md-12">
                                <div style="margin: 3px;padding: 0px;border: 1px;text-align: center">
                                   <img src="img/66.png" alt="admin代表" style="height: 70px;width: 70px"/>
                                </div>
                            </div>
                            <div class="col-md-12" style="background-color: #5cb85c">
                                <div class="item" style="text-align: center">
                                    <div class="item-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                            </div>
                                            <div class="col-md-8">
                                                <label class="control-label">职责： admin经理</label>
                                            </div>
                                            <div class="col-md-2">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-group">
                                        <div class="row">
                                            <div class="col-md-1">
                                            </div>
                                            <div class="col-md-10">
                                                <label class="control-label">负责模块： 手球/排球</label>
                                            </div>
                                            <div class="col-md-1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-group">
                                        <div class="row">
                                            <div class="col-md-1">
                                            </div>
                                            <div class="col-md-10">
                                                <label class="control-label">邮箱： baibai@qq.com</label>
                                            </div>
                                            <div class="col-md-1">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8" style="background-color:indianred">
                        <form role="form">
                            <div class="form-group">
                                <textarea class="form-control" name="ares" rows="5"></textarea>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-5" style="display: flex">
                                    <input type="text" class="form-control" name="isay" placeholder="Recipient's username">
                                    <div class="input-group-append">
                                        <button class="btn input-group-text" id="basic-addon2">提交</button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer id="footer">
    <div class="container">
        <p>北京华羽集团</p>
        <p>©1999-2018 CSDN版权所有京号</p>
    </div>
</footer>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script src="https://cdn.bootcss.com/web-socket-js/1.0.0/web_socket.js"></script>
<script type="text/javascript" src="js/sockjs.min.js"></script>
<script type="text/javascript" src="js/stomp.min.js"></script>

<script type="text/javascript">
    $(function(){
        connect();
    })

    $('form').on('submit', function(){
        event.preventDefault(); //阻止form表单默认提交
    })

    var stompClient = null;
    //加载完浏览器后  调用connect（），打开双通道

    //强制关闭浏览器  调用websocket.close（）,进行正常关闭
    window.onunload = function() {
        disconnect();
    }


        $("#basic-addon2").on("click",function(){
        var vs = $("input[name='isay']").val();
        if($("#uus").val()=='admin'){
            stompClient.send("/app/aloneRequest",{name:$("#uus").val()},vs);
        }else if($("#uus").val()=='baibai'){
            stompClient.send("/app/aloneRequest",{name:$("#uus").val()},vs);
        }
        if(vs==null||vs==''){
            alert("提交不能为空！！！");
        }else{
            // var spea = $("textarea[name='ares']").val();
            // $("textarea[name='ares']").val(spea+'\n朕说:'+vs);
        }
    })


    function connect(){
        var socket = new SockJS('http://localhost:8888/endpointOyzc'); //连接SockJS的endpoint名称为"endpointOyzc"
        stompClient = Stomp.over(socket);//使用STMOP子协议的WebSocket客户端
        stompClient.connect({},function(frame){//连接WebSocket服务端
            console.log('Connected:' + frame);
            //通过stompClient.subscribe订阅/topic/getResponse 目标(destination)发送的消息
            if($("#uus").val()=='admin'){
                alert("fsdfdsfd");
                stompClient.subscribe("/user/"+"3" + "/alone/getResponse",function(response){
                    console.log(response);
                    showResponse(response.body);
                })
            }else if($("#uus").val()=='baibai'){
                alert("baibai");
                stompClient.subscribe("/user/"+"1" + "/alone/getResponse",function(response){
                    console.log(response);
                    showResponse(response.body);
                })
            }
        });
    }


    //关闭双通道
    function disconnect(){
        if(stompClient != null) {
            stompClient.disconnect();
        }
        console.log("Disconnected");
    }

    function showResponse(vas) {
        var spea = $("textarea[name='ares']").val();
        if(spea!=null||spea!=''){
            $("textarea[name='ares']").val(spea+'\n'+vas);
        }
    }
</script>


</body>
</html>
