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
        #footer{
            background-color: #666;
            border-top:1px solid #ccc;
            padding: 20px;
            text-align: center;
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
        #information{
            background:#eee;
            padding: 40px;
        }
        .info-content{
            background: #fff;
            margin: 0 0 20px 0;
            box-shadow: 2px 2px 3px #ccc;
        }
        .info-content img{
            margin: 12px 0;
        }
        .info-content h4{
            color: #333;
            text-align: center;
        }
        .info-content p{
            line-height: 1.6;
            text-align: center;
        }
        .info-right{
            background-color: #fff;
            box-shadow: 2px 2px 3px #ccc;
        }
        .info-right blockquote {
            margin: 0;
            padding: 0;
        }
        .info-right h2{
            font-size: 20px;
            color: #333;
            padding: 5px;
        }
        .info-right h4{
            color: #333;
            padding: 0 12px 0 0;
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
                    <c:if test="${ti.tid == 1}">
                        <li class="active"><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                    <c:if test="${ti.tid != 1}">
                        <li><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
    </div>
</nav>
</nav>


<div class="jumbotron">
    <div class="container">
        <hgroup>
            <h1>咨询</h1>
            <h4>企业最新的资讯动态。。。。</h4>
        </hgroup>
    </div>
</div>
<div id="information">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="container-fluid">
                    <div class="row info-content">
                        <div class="col-md-5 col-sm-5 col-xs-5">
                            <img src="img/19.jpg" alt="" class="img-responsive" style="height: 240px"/>
                        </div>
                        <div class="col-md-7">
                            <h4>排球搞真职业化让女排先行</h4>
                            <p>2008年张越红曾在日本东丽俱乐部打球</p>
                            <p class="hidden-xs">如果真的要让排球彻底职业化，让女排动起来，是一个不错的选择，也是一个捷径。</p>
                        </div>
                    </div>
                    <div class="row info-content">
                        <div class="col-md-5 col-sm-5 col-xs-5">
                            <img src="img/20.jpg" alt="" class="img-responsive" style="height: 240px"/>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-7">
                            <h4>排球中心举行4月份主题党日活动</h4>
                            <p>两会’精神”开展了学习研讨</p>
                            <p class="hidden-xs">以及如何通过自身奋斗实现中国青年的“体育梦”。</p>
                        </div>
                    </div>
                    <div class="row info-content">
                        <div class="col-md-5 col-sm-5 col-xs-5">
                            <img src="img/15.jpg" alt="" class="img-responsive" style="height: 240px"/>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-7">
                            <h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
                            <p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收进国家队，加强大国家队理念</p>
                            <p>　会上，李全强主任还代表中国排球协会与劳尔·洛萨诺主教练团队签约并颁发中国男排主教练聘书。</p>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 info-right">
                <blockquote>
                    <h2>热门资讯</h2>
                </blockquote>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
                            <img src="img/15.jpg" alt="" class="img-responsive" style="height: 120px"/>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
                            <h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
                            <p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
                            <img src="img/12.jpg" alt="" class="img-responsive" style="height: 120px"/>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
                            <h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
                            <p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
                            <img src="img/10.jpg" alt="" class="img-responsive" style="height: 120px"/>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
								<p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
                        <img src="img/1.jpg" alt="" class="img-responsive" style="height: 120px"/>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
								<p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
                    <img src="img/2.jpg" alt="" class="img-responsive" style="height: 120px"/>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
								<p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
            </div>
    </div>
        <div class="row">
            <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
                <img src="img/3.jpg" alt="" class="img-responsive" style="height: 120px"/>
            </div>
            <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
								<p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
            <img src="img/4.jpg" alt="" class="img-responsive" style="height: 120px"/>
        </div>
        <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
								<p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
    </div>
</div>
<div class="row">
    <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
        <img src="img/5.jpg" alt="" class="img-responsive" style="height: 120px"/>
    </div>
    <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
								<p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
</div>
</div>
<div class="row">
    <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0;padding:0">
        <img src="img/6.jpg" alt="" class="img-responsive" style="height: 120px"/>
    </div>
    <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
								<h4>中国男排外籍主教练团队聘任新闻发布会在京举行</h4>
                                    <p class="hidden-xs">将来我们要将更多有能力有潜力的队员吸收</p>
                        </div>
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

    })
</script>
</body>
</html>
