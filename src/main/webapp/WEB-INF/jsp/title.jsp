
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
