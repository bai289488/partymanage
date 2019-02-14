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
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
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
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <c:forEach items="${title}" var="ti">
                    <c:if test="${ti.tid == 4}">
                        <li class="active"><a href="${ti.turl}"><span class="glyphicon"></span> ${ti.tname}</a></li>
                    </c:if>
                    <c:if test="${ti.tid != 4}">
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
            <h1>服务</h1>
            <h4>公司提供的服务。。。</h4>
        </hgroup>
    </div>
</div>

<div id="about">
    <div class="container">
        <div class="row">
            <div class="col-md-3 hidden-sm hidden-xs">
                <div class="list-group">
                    <a href="javascript:void(0);" class="list-group-item active" id="addscom">1.公司需求</a>
                    <a href="javascript:void(0);" class="list-group-item" id="addcom">2.公司添加</a>
                    <a href="javascript:void(0);" class="list-group-item" id="gettem">3.公司模板</a>
                </div>
            </div>
            <div class="col-md-9 about">
                <div class="container" id="cares">
                    <a href="1"></a>
                    <h3>公司介绍</h3>
                    <p>北京华羽时代体育文化发展有限公司是一家专注于体育产业互联网与科技应用的高新技术企业，拥有专业体育科技研发人员百余人及独立的高端服务器，总部坐落于北京市朝阳区东五环，其中专业程序研发人员占总人数65%。
                        公司目前聚焦多项球类体育运动，以体育互联网系列产品与服务，争创国内首家以“互联网+训练辅助+赛事管理+品牌传播+商务运营”的体育科技服务商。</p>
                    <a href="2"></a>
                    <h3>加入我们</h3>
                    <p>1.负责公司产品软件功能模块的详细设计、开发、测试；</p>
                    <p>2.参与系统的需求分析和技术功能实现；</p>
                    <p>3.参与撰写需求分析说明书、概要设计、详细设计等相关技术文档；</p>
                    <p>4.根据公司的设计和编码规范能独立完成分配模块的设计、编码、测试工作；</p>
                    <p>5.对自身承担模块的开发进度、代码质量负责。</p>
                    <p>6.具有一定的统筹管理能力。</p>
                    <p>任职要求：</p>
                    <p>1.计算机相关专业，至少3-5年以上JAVA Web幵发经验；</p>
                    <p>2.具备扎实的JAVA基本功、数据结构与算法，熟练应用设计模式；</p>
                    <p>3.熟练掌握Spring Framework、MyBatis等主流开发框架；</p>
                    <p>4.了解HTML、CSS、JQuery、Bootstrap等网页技术，并熟悉JSON、XML</p>
                    <p>5.熟悉相关如Redis、Memcached等缓存技术的一种；</p>
                    <p>6.熟练使用Tomcat、Nginx，WebLogic，Websphere等，并熟悉服务器配置原理；</p>
                    <p>7.熟悉MySQL，对SQL优化有一定的经验；</p>
                    <p>8.熟悉分布式系统设计及应用，熟悉高并发、高负载、高可用性系统设计的设计开发及调优；</p>
                    <p>9.熟悉JAVA多线程及并发技术；</p>
                    <p>1.熟悉Web开发中安全技术；</p>
                    <p>11.熟悉Linux/Unix操作系统；</p>
                    <a href="3"></a>
                    <h3>公司远景</h3>
                    <p>全球领先的排球数据和体育媒体集团通过制作最快捷、详细、引人入胜的内容畅游体育世界，运营中国最火爆排球赛事，推出开创性的数据服务模式</p>
                </div>
                <div class="container" id="caref" style="display: none">
                    <textarea id="container" name="content" type="text/plain">这里写你的初始化内容</textarea>
                    <button id="btn" class="btn" onclick="postDate()">提交</button>
                </div>
                <div class="container" id="caret" style="display: none">
                    <%--<iframe src="" frameborder="0" id="templ"></iframe>>--%>
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

    $("#addcom").on("click",function(){
        $("#addscom").removeAttr("class").addClass("list-group-item");
        $("#gettem").removeAttr("class").addClass("list-group-item");
        $("#addcom").addClass('active');
        $("#cares").css('display','none');
        $("#caref").css('display','block');
        $("#caret").css('display','none');
    });

    $("#gettem").on("click",function(){
        $("#addscom").removeAttr("class").addClass("list-group-item");
        $("#addcom").removeAttr("class").addClass("list-group-item");
        $("#gettem").addClass('active');
        $("#cares").css('display','none');
        $("#caref").css('display','none');
        $("#caret").css('display','block');
        $("#caret").empty();
        $.ajax({
            type:"GET",
            url:"care/getTemplate",
            dateType: "json",
            data:'',
            success:function(res){
               var ff = '<iframe src=" '+res+'" frameborder="0" id="templ"></iframe>';
                $("#caret").append(ff);
            }
        })
    });

    var ue = UE.getEditor('container');

    function postDate() {
        $.ajax({
            type:"POST",
            url:"care/getUE",
            dateType: "json",
            data:{"content":ue.getContent()},
            success:function(res){
                console.log(res);
            }
        })
    }

    UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
    UE.Editor.prototype.getActionUrl = function(action) {
        if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadimage') {
            return 'http://localhost:8888/care/upload';
        } else if (action == 'uploadvideo') {
            return 'http://a.b.com/video.php';
        } else {
            return this._bkGetActionUrl.call(this, action);
        }
    }

</script>
</body>
</html>
