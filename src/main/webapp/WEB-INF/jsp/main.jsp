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
        .tab-h2{
            font-size: 30px;
            text-align: center;
            letter-spacing: 1px;
            color: #0059B2;
            margin: 20px 0 40px;
        }
        .tab-p{
            font-size: 18px;
            text-align: center;
            letter-spacing: 1px;
            color: #999;
            margin: 20px 0 40px;
        }
        .tab1{
            margin: 30px 0;
            color: #666;
        }
        .col{
            padding: 20px;
        }
        @media(min-width:768px){
            .tab-h2{
                font-size: 26px;
            }
            .tab-p{
                font-size: 16px;
            }
        }
        @media(min-width:992px){
            .tab-h2{
                font-size: 28px;
                background-image: url("img/33.jpg");
                height: 50px;
                opacity:0.60;
                text-align: center;
            }
            .tab-p{
                font-size: 17px;
            }
        }
        @media(min-width:1200px){
            .tab-h2{
                font-size: 30px;
            }
            .tab-p{
                font-size: 18px;
            }
        }
        #footer{
            background-color: #eee;
            border-top:1px solid #ccc;
            padding: 20px;
            text-align: center;
        }
        .tab2{
            padding: 40px;
            background-color: #eee;
        }
        .tab3{
            padding: 40px;
        }
        .tab2 img{
            width:40%;
            height: 40%;
        }
        .tab3 img{
            width:40%;
            height: 40%;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="${first.turl}" class="navbar-brand logo"><img src="img/345.jpg" style="width: 45px;height: 45px"/></a>
            <a href="javascript:void(0);" class="navbar-brand " id="login">登陆</a>
            <a href="javascript:void(0);" class="navbar-brand " >|</a>
            <a href="javascript:void(0);" class="navbar-brand " id="regis">注册</a>
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
                    <li class="active"><a href="${ti.turl}"><span class="glyphicon glyphicon-star"></span> ${ti.tname}</a></li>
                    </c:if>
                    <li><a href="${ti.turl}"><span class="glyphicon glyphicon-star"></span> ${ti.tname}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
</nav>
<div id="mycarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <c:forEach items="${circle}" var="ci">
        <li data-target="#mycarousel" data-slide-to="${ci.cid-1}" >${ci.cid-1}</li>
        </c:forEach>
    </ol>
    <div class="carousel-inner">
        <c:forEach items="${circle}" var="ci">
            <c:if test="${ci.cid == 1}">
                <div class="item active" style="background:#223240">
                    <img src="${ci.curl}" style="width: 60%"/>
                </div>
            </c:if>
            <div class="item" style="background:#223240">
                <img src="${ci.curl}" style="width: 60%"/>
            </div>
        </c:forEach>
    </div>
    <a href="#mycarousel" data-slide="prev" class="carousel-control left">&lsaquo;</a>
    <a href="#mycarousel" data-slide="next" class="carousel-control right">&rsaquo;</a>
</div>
<div class="tab1">
    <div class="container">
        <h2 class="tab-h2" >超级排球</h2>
        <p class="tab-p">[专注于排球项目的资讯平台超级排球,通过超级排球app即可随时随地获取最新的排球运动资讯,了解精彩的排球赛事,观看花絮视频等。]</p>
        <div class="row">
            <div class="col-md-6 col">
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img src="img/10.jpg" alt="" style="height:60px"></a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">信息</h4>
                        <p>简体中文, 英语</p>
                        <p>需要 iOS 9.0 或更高版本。与 iPhone、iPad 和 iPod touch 兼容。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col">
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img src="img/11.jpg" alt="" style="height:60px"></a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">SUPERVOLLEYBALL</h4>
                        <p>SUPERVOLLEYBALL</p>
                        <p>最具影响力的排球类体育综合社交服务平台。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col">
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img src="img/14.jpg" alt="" style="height:60px"></a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">简介</h4>
                        <p>集合多种排球类体育运动项目</p>
                        <p>为广大排球项目爱好者和参与者提供更专业、更权威、更有价值的服务。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col">
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img src="img/13.jpg" alt="" style="height:60px"></a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">新内容</h4>
                        <p>修复了一些已知问题 </p>
                        <p>尽情体验吧! 如果您喜欢超级排球,欢迎为我们评分</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab2">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col" id="sd">
                <h5>北京华羽时代体育文化发展有限公司</h5>
                <p>流畅度提升 尽情体验吧! 如果您喜欢超级排球,欢迎为我们评分</p>
            </div>
            <div class="col-md-6">
                <img src="img/15.jpg" alt="" style="height:120px" class="img-responsive">
            </div>
        </div>

    </div>
</div>
<div class="tab3">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="img/16.jpg" alt="" style="height:120px"  class="img-responsive">
            </div>
            <div class="col-md-6" id="ss">
                <h5>北京华羽时代体育文化发展有限公司</h5>
                <p>流畅度提升 尽情体验吧! 如果您喜欢超级排球,欢迎为我们评分</p>
            </div>
        </div>
    </div>
</div>
<div class="tab3">
    <div class="container">
        <div class="row">
            <div class="col-md-12" id="main"  style="width: 600px;height:400px;">

            </div>
        </div>
    </div>
</div>
<footer id="footer">
    <div class="container">
        <p>北京华羽集团</p>
        <p>©1999-2018 CSDN版权所有京ICP证09002463号</p>
    </div>
</footer>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/echarts.common.min.js"></script>
<script type="text/javascript">
    var arr = [];
    var aa =[];
    $(function(){

        $(window).resize(function(){
            var height = $(".carousel-inner img").eq(0).height() ||
                $(".carousel-inner img").eq(1).height() ||
                $(".carousel-inner img").eq(2).height() ||
                $(".carousel-inner img").eq(3).height() ||
                $(".carousel-inner img").eq(4).height() ||
            $(".carousel-inner img").css("line-height",height+'px');
        })
        $("#mycarousel").carousel({
            interval:5000,
        });


    });

</script>
</body>
</html>