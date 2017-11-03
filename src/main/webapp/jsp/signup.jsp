<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Musik | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/app.css" type="text/css" />
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/js/ie/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath }/js/ie/respond.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/ie/excanvas.js"></script>
  <![endif]-->
  <script type="application/javascript">

    $(function () {
        if("${msg }".valueOf() == ""){
        }else alert("${msg }");
    })

      //验证登陆名
      function checkCode() {
          //获取用户输入的登陆名
          var code=$("#userName").val();
//          alert(code);
          //进行判断
          if(code.trim()==""){
              $("#userNameID").addClass("error");
              $("#userNameID").html("登录名不能为空");
//              checkForm();
          }else {
              //登陆名不为空,ajax请求，验证用户是否存在
//              alert(code);
              var url="${pageContext.request.contextPath }/user/checkName.action";
            var param={"userName":code};
              $.ajax({
                  url:url,
                  type:"post",
                  data:param,
                  success:function (data) {
//                      alert(data);
                      //操作data，进行判断
                      if(data && data == "no"){
                          //提示
                          $("#userNameID").addClass("error");
                          $("#userNameID").html("登录名已被注册");
//                          checkForm();
                      }else {
                          $("#userNameID").removeClass("error");
//                          $("#userNameID").html("可以注册");
                          $("#userNameID").html("");
                          checkF/orm();
                      }
                  }
              });
          }
      }

      function checkEmail() {
          //获取用户输入的登陆名
          var code=$("#userEmail").val();
//          alert(code);

              var url="${pageContext.request.contextPath }/user/checkEmail.action";
              var param={"userEmail":code};
              $.ajax({
                  url:url,
                  type:"post",
                  data:param,
                  success:function (data) {
//                      alert(data);
                      //操作data，进行判断
                      if(data && data == "no"){
                          //提示
                          $("#userEmailID").addClass("error");
                          $("#userEmailID").html("该邮箱已被注册！！！");
//                          checkForm();
                      }else {
                          $("#userEmailID").removeClass("error");
//                          $("#userNameID").html("可以注册");
                          $("#userEmailID").html("");
//                          checkForm();
                      }
                  }
              });
      }

      function checkPwd() {
          var code=$("#userPassword").val();
//          alert(code);
          //进行判断
          if(code.trim()==""){
              $("#passwordID").addClass("error");
              $("#passwordID").html("密码不能为空");
//              checkForm();
          }else {
              $("#passwordID").removeClass("error");
              $("#passwordID").html("");
//              checkForm();
          }
      }

      //可以阻止表单的提交
      function checkForm() {
          //先让校验名称的方法执行一下
          checkCode();
          checkPwd();
          checkEmail();
          //获取error的数量，如果数量>0，说明存在错误，不能提交表单
          if($(".error").size() > 0){
//              alert("大于0");
//              $("#signup").attr('disabled',true);
              return false;
          }else{
//              $("#signup").attr('disabled',false);
              return true;
          }
      }
  </script>
</head>
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInDown">
    <div class="container aside-xl">
      <a class="navbar-brand block" href="index.jsp"><span class="h1 font-bold">Musik</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>Sign up to find interesting thing</strong>
        </header>
        <%--${pageContext.request.contextPath }/user/register.action--%>
        <form action="${pageContext.request.contextPath }/user/register.action" method="post" onsubmit="return checkForm()">
          <div class="form-group">
            <input placeholder="用户名" id="userName" name="userName" onblur="checkCode()" class="form-control rounded input-lg text-center no-border"><SPAN id="userNameID" style="FONT-WEIGHT: bold;"></SPAN>
          </div>
          <div class="form-group">
            <input type="email" placeholder="Email" id="userEmail" onblur="checkEmail()" name="userEmail" class="form-control rounded input-lg text-center no-border"><SPAN id="userEmailID" style="FONT-WEIGHT: bold;"></SPAN>
          </div>
          <div class="form-group">
             <input type="password" placeholder="密码" id="userPassword" onblur="checkPwd()" name="userPassword" class="form-control rounded input-lg text-center no-border"><SPAN id="passwordID" style="FONT-WEIGHT: bold;"></SPAN>
          </div>
          <div class="checkbox i-checks m-b">
            <label class="m-l">
              <input type="checkbox" checked=""><i></i> Agree the <a href="#">terms and policy</a>
            </label>
          </div>
          <button type="submit" id="signup" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">Sign up</span></button>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>Already have an account?</small></p>
          <a href="${pageContext.request.contextPath }/user/signin.action" class="btn btn-lg btn-info btn-block btn-rounded">Sign in</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2014</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <%--<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>--%>
  <!-- Bootstrap -->
  <script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
  <!-- App -->
  <script src="${pageContext.request.contextPath }/js/app.js"></script>
  <script src="${pageContext.request.contextPath }/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/app.plugin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/demo.js"></script>

</body>
</html>
