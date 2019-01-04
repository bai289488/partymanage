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
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>Title</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/dialog.css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <style type="text/css">
        .logo{
            padding:0;
        }
        #mycarousel{
            margin: 40px;
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
        label{
            width:18px;
            display: inline;
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
        /*头像样式*/
        .cx-img {
            width: 100px !important;
            height: 100px !important;
            opacity: 0;
            position: absolute;
            top: 0;
            left: 117px;
        }
        .pic-position{
            position: relative;
        }
        .cx-pic {
            width: 100px;
            height: 100px;
            line-height: 100px;
            outline: none;
            text-indent: 12px;
            left: 117px;
            padding: 0;
            margin: -22px 0 0 118px;
            border: 1px solid #D9DBEA;
            color: #000000;
            text-align: center;
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
        <h2 class="tab-h2" >精美图集</h2>
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
        <p>©1999-2018 CSDN版权所有京号</p>
    </div>
</footer>

<div class="modal fade" id="alertVideo">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="video-delete">
                <img class="cursor-point" src="img/delete.png"
                     onclick="$('#alertVideo').modal('hide')">
            </div>
            <div class="video-title">提示框</div>
            <div class="alert-url" style="text-align: center">
                <span id="diss"></span>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="insertVideo">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="video-delete">
                <img class="cursor-point" src="img/delete.png"
                     onclick="$('#insertVideo').modal('hide')">
            </div>
            <div class="video-title">登陆</div>
            <div class="video-url">
                <span class="inline-mid">账号：</span>
                <input class="inline-mid" id="name" type="text" placeholder="账号/邮箱"/>
            </div>
            <div class="video-url">
                <span class="inline-mid">密码：</span>
                <input class="inline-mid" id="pwd" type="password" placeholder="密码"/>
            </div>
            <div class="video-url">
                <span class="inline-mid">记住：</span>
                <input class="inline-mid" id="rembers" type="radio" value="1"/>
            </div>
            <div class="video-button">
                <div class="inline-mid button-blue cursor-point" id="logins" >确定</div>
                <div class="inline-mid button-gray cursor-point"
                     onclick="$('#insertVideo').modal('hide')"
                >取消</div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="regisVideo">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="video-delete">
                <img class="cursor-point" src="img/delete.png"
                     onclick="$('#regisVideo').modal('hide')">
            </div>
            <div class="video-title">注册</div>
            <form id="form1" action="" method="post">
            <div class="video-url" style="font-size: 2px">
                <span class="inline-mid">账号：</span>
                <input class="inline-mid" name="username" type="text" placeholder="账号"/>
            </div>
            <div class="video-url">
                <input class="inline-mid" id="userss" type="text" style="display: none"/>
            </div>
            <div class="video-url">
                <span class="inline-mid">密码：</span>
                <input class="inline-mid" name="password" type="password" placeholder="密码"/>
            </div>
            <div class="video-url">
                <input class="inline-mid" id="pass" type="text" style="display: none"/>
            </div>
            <div class="video-url  pic-position">
                <span class="inline-mid">头像：</span>
                <input class="inline-mid cx-img" id="upImg" type="file"><div class="cx-pic"><img id="img2" style="height:100%;width:100%;margin-left: -12px;" src="img/cx-pic.png"/></div>
            </div>
                <div class="video-url">
                    <input class="inline-mid" name="faceImage" type="text" style="display: none"/>
                </div>
            <div class="video-url">
                <span class="inline-mid">邮箱：</span>
                <input class="inline-mid" name="nickname" type="text" placeholder="邮箱" onblur="getyan()"/>
            </div>
            <div class="video-url">
                <input class="inline-mid" id="nickss" type="text" style="display: none"/>
            </div>
            <div class="video-url" >
                <span class="inline-mid">年龄：</span>
                <input class="inline-mid" name="age" type="text" placeholder="年龄"/>
            </div>
            <div class="video-url">
                <input class="inline-mid" id="agess" type="text" style="display: none"/>
            </div>
            <div class="video-url" style="font-size: 2px">
                <%--<label class="inline-mid"><input type="radio"  name="sex" value="0"><span style="width: 5px">保密</span></label>--%>
                <%--<label class="inline-mid"><input type="radio" name="sex" value="1"><span style="width: 5px">男性</span></label>--%>
                <%--<label class="inline-mid"><input type="radio" name="sex" value="2"><span style="width: 5px">女性</span></label><br />--%>
                <div class="inline-mid ra">
                    <span>保密：</span><input type="radio"  name="sex" value="0">
                </div>
                <div class="inline-mid ra">
                    <span>男性：</span><input type="radio" name="sex" value="1">
                </div>
                <div class="inline-mid ra">
                    <span>女性：</span><input type="radio" name="sex" value="2">
                </div>
            </div>
            <div class="video-url">
                <span class="inline-mid">省：</span>
                <select name="province">
                    <option value="-1">请选择省</option>
                    <c:forEach items="${provice}" var="pro">
                        <option value="${pro.provinceid}">${pro.province}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="video-url">
                <span class="inline-mid">市：</span>
                <select name="city">
                    <option value="-1">请选择市</option>
                </select>
            </div>
            <div class="video-url">
                <span class="inline-mid">县/区：</span>
                <select name="district">
                    <option value="-1">请选择县/区</option>
                </select>
            </div>
            <div class="video-url" >
                <span class="inline-mid">验证码：</span>
                <input class="inline-mid" name="yanZheng" type="text" placeholder="邮箱验证码"/>
            </div>
            <div class="video-button">
                <div class="inline-mid button-blue cursor-point" onclick="submits()">确定</div>
                <div class="inline-mid button-gray cursor-point"
                     onclick="$('#regisVideo').modal('hide')"
                >取消</div>
            </div>
        </form>
        </div>
    </div>
</div>

<div id="hwq_tool_tip" style="position:fixed;z-index:9999;top:0;width:100%;height:100%;opacity:0;display:none">
    <div style="background:#4C4C4C;width: 150px;border-radius:10px; padding: 11px 0 5px 0; margin:20% auto 0 auto">
        <img src="" style="display:block;width:22px;margin-left:64px"/>
        <span style="display:block;line-height:40px;font-size:14px;text-align:center;color:white"></span>
    </div>
</div>

<script type="text/javascript" src="js/jquery.js"></script>
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
    $("#logins").on("click",function(){
            var fla = $("#rembers").val()==1?1:'';
            $.post("user/login",{"nickname":null,"username":$("#name").val(),"password":$("#pwd").val(),"flag":fla},function(data){
                    if(data!=null){
                        $('#insertVideo').modal('hide');
                        $(".dis").remove();
                        var ss = '<a href="javascript:void(0);" class="navbar-brand ">欢迎您:'+data.username+'</a>';
                        $(".navbar-header").append(ss);
                    }else{
                        $('#insertVideo').modal('hide');
                    }
            });

    });

    $("select[name='province']").on('change',function(){
        var proid = $("select[name='province']").val();
        $.post("user/getList",{"typeid":1,"fatherid":proid},function(data){
            $.each(data,function(index,list){
                var opera = "<option value="+list.cityid+">"+list.city+"</option>";
                $("select[name='city']").append(opera);
            })
        });
    });

    $("select[name='city']").on('change',function(){
        var city = $("select[name='city']").val();
        alert(city);
        $.post("user/getList",{"typeid":2,"fatherid":city},function(data) {
          $.each(data,function (index, list) {
                var operas = "<option value="+list.areaid+">"+list.area+"</option>";
                $("select[name='district']").append(operas);
            })
        });
    });

    function getyan(){
        $.post("user/getYan",{"nickname":$("[name='nickname']").val()},function(res) {
            alert(res);
        })
    }

   function submits(){
        var jsons = $("#form1").serializeObject();
        $.post("user/regis",jsons,function(res) {
            var data = res.errorMap;
            if(res.result==null){
                if(data.username!=null){
                    $("#userss").css('display','block');
                    $("#userss").val(data.username);
                }else if(data.password!=null){
                    $("#pass").css('display','block');
                    $("#pass").val(data.password);
                }else if(data.nickname!=null){
                    $("#nickss").css('display','block');
                    console.log(data.nickname);
                    $("#nickss").val(data.nickname);
                }else if(data.age!=null){
                    $("#agess").css('display','block');
                    console.log(data.age);
                    $("#agess").val(data.age);
                }
            }else{
                if(res.result=="success"){
                    alert("success");
                    $('#regisVideo').modal('hide');
                    window.location.href = '/';
                }else{
                    alert("false");
                    $('#regisVideo').modal('hide');
                    window.location.href = '/';
                }
            }

        });
    }

    $.fn.serializeObject = function(){
        var o = {};
        var a = this.serializeArray();
        $.each(a,function(){
            if(o[this.name]){
                if(!o[this.name].push){
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            }else{
                o[this.name] = this.value || '';
            }
        });
        return o;
    }

    $("#upImg").on('change',function(){
        var forData = new FormData();
        console.log($(this).get(0).files[0]);
        forData.append("imgFile",$(this).get(0).files[0]);
        var result = '';
        $.ajax({
            url: 'upload/uploadFile?modelName=party',
            type: 'post',
            cache: false,
            data: forData,
            processData: false,
            contentType: false,
            async: false
        }).done(function(res){
            let dataObj = res;
            console.log(res);
            $("#img2").attr('src',dataObj);

            $('input[name="faceImage"]').val(dataObj);
        }).fail(function (res) {
        });
    })
</script>
</body>
</html>