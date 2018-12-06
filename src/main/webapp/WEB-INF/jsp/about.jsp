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
        .carousel-inner img{
            margin: 0 auto;
        }
        .carousel-control{
            font-size: 100px;
            line-height: 440px;
        }
        .jumbotron{
            background-size: cover;
            background-image: url('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3969856037,3102533136&fm=200&gp=0.jpg');
        }
        .jumbotron h1{
            font-size: 36px;
        }
        .jumbotron h4{
            font-size: 18px;
        }
        #case{
            padding:40px 0 ;
            background-color: #eee;
            text-align: center;
        }
        #case h4{
            color: #666;
        }
        #case p{
            color: #666;
            line-height: 1.6;
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
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <c:forEach items="${title}" var="ti">
                    <c:if test="${ti.tid == 3}">
                        <li class="active"><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                    <c:if test="${ti.tid != 3}">
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
            <h1>喜事图集</h1>
            <h4>各种风格的美图我们都有。。。</h4>
        </hgroup>
    </div>
</div>

<div id="case">
    <div class="container">
        <div class="row">
        <c:forEach items="${images}" var="img">
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <input name="imges" type="hidden" value="${img.parentid}"/>
                    <img class="imgs" src="${img.iurl}" alt="">
                    <div class="caption">
                        <h4>${img.iname}</h4>
                        <p>${img.idetail}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
        </div>
    </div>
</div>
<footer id="footer" >
    <div class="container" style="text-align: center">
        <p>北京华羽集团</p>
        <p>©1999-2018 CSDN版权所有京号</p>
    </div>
</footer>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function(){

        $(window).resize(function(){
            var height = $(".carousel-inner img").eq(0).height() ||
                $(".carousel-inner img").eq(1).height() ||
                $(".carousel-inner img").eq(2).height()
            $(".carousel-inner img").css("line-height",height+'px');
        })
        $("#mycarousel").carousel({
            interval:5000,
        });
    });
</script>
</body>
</html>
