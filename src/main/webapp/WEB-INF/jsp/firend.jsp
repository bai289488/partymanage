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
            background-image: url('img/18.jpg');
            color: #ccc;
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
                    <c:if test="${ti.tid == 5}">
                        <li class="active"><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                    <c:if test="${ti.tid != 5}">
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
            <h1>案例</h1>
            <h4>和各大明星企业有合作。。。</h4>
        </hgroup>
    </div>
</div>

<div id="case">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/22.jpg" alt="">
                    <div class="caption">
                        <h4>中国联通</h4>
                        <p>中国联合网络通信集团有限公司（中国联通）拥有覆盖全国、通达世界的全球领先通信网络</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/23.jpg" alt="">
                    <div class="caption">
                        <h4>新浪体育</h4>
                        <p>新浪体育提供最快速最全面最专业的体育新闻和赛事报道</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/24.jpg" alt="">
                    <div class="caption">
                        <h4>百度</h4>
                        <p>全球最大的中文搜索引擎、致力于让网民更便捷地获取信息</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/25.jpg" alt="">
                    <div class="caption">
                        <h4>中国移动</h4>
                        <p>中国移动通信集团公司，是中国规模最大的移动通信运营商</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/26.jpg" alt="">
                    <div class="caption">
                        <h4>中国移动</h4>
                        <p>中国移动通信集团公司，是中国规模最大的移动通信运营商</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/27.jpg" alt="">
                    <div class="caption">
                        <h4>中国移动</h4>
                        <p>中国移动通信集团公司，是中国规模最大的移动通信运营商</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/24.jpg" alt="">
                    <div class="caption">
                        <h4>百度</h4>
                        <p>全球最大的中文搜索引擎、致力于让网民更便捷地获取信息</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/25.jpg" alt="">
                    <div class="caption">
                        <h4>中国移动</h4>
                        <p>中国移动通信集团公司，是中国规模最大的移动通信运营商</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/23.jpg" alt="">
                    <div class="caption">
                        <h4>新浪体育</h4>
                        <p>新浪体育提供最快速最全面最专业的体育新闻和赛事报道</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/24.jpg" alt="">
                    <div class="caption">
                        <h4>百度</h4>
                        <p>全球最大的中文搜索引擎、致力于让网民更便捷地获取信息</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/25.jpg" alt="">
                    <div class="caption">
                        <h4>中国移动</h4>
                        <p>中国移动通信集团公司，是中国规模最大的移动通信运营商</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="thumbnail">
                    <img src="img/26.jpg" alt="">
                    <div class="caption">
                        <h4>中国移动</h4>
                        <p>中国移动通信集团公司，是中国规模最大的移动通信运营商</p>
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
    })
</script>
</body>
</html>
