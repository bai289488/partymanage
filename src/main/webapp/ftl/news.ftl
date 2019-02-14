<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>模板</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="http://h5.supervolleyball.com/Common/js/vue.min.js"></script>
    <script src="http://h5.supervolleyball.com/Common/js/jquery.min.js"></script>
    <script src="http://h5.supervolleyball.com/HandBall/js/common.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
      <div class="main" style="height: 100%;width: 100%;display: inline" v-cloak>
          <div class="title" style="height: 20%;width: 100%;text-align: center;margin: 5px;background-color: #00a2d4;opacity:0.8">
              <h2>小模板展示</h2>
          </div>
          <div class="content" style="height: 600px;width: 100%;background-color: #8a6d3b;opacity:0.3;margin: 5px">
              <div class="content-item" style="margin: 0px 300px 0px 300px;height: 70%">
                  <#list images as im>
                  <img src="${im!}" style="margin: auto"/>
                  </#list>
              </div>
              <div class="content-item" style="margin: 0px 300px 0px 300px;height: 30%">
                      <p>${texts!}</p>
              </div>
          </div>
          <div class="footer" style="height: 20%;width: 100%;background-color: #4cae4c;margin: 5px;text-align: center">
              <div class="container">
                  <p>北京华羽集团</p>
                  <p>©1999-2018 CSDN版权所有京号</p>
              </div>
          </div>
      </div>

      <script type="text/javascript">

          var vm = new Vue({
              data: {
                  index:0
              },
              methods: {

              },
              mounted: function () {
              }
          }).$mount(".main");


      </script>

</body>
</html>