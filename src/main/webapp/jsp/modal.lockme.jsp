<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
<script type="text/javascript">
    function Relogin() {
        alert("Relogin");
        var url="${pageContext.request.contextPath }/user/Relogin.action";
        val pwd=$("#pwd").val();
        if(pwd.trim() == ""){
            $("#ReloginMsg").html("密码不能为空！！！");
        }else {
            $.ajax({
                url:url,
                type:"post",
                data:{"password":pwd},
                success:function (data) {
                    if(data && data == "no"){
                        $("#ReloginMsg").html("密码错误！！！");
//                          checkForm();
                    }else {
                        $("#ReloginMsg").html("");
                        window.location.href="/jsp/index.jsp";
                    }
                }
            });
        }
    }

</script>--%>

<script type="text/javascript">
  function check_form() {
      var flag=true;
      var pwd=$.trim($("#pwd").val());
      if(!pwd){
          alert("密码不能为空。。。");
          return false;
      }else {
          $.ajax({
              async:false,
              url:"${pageContext.request.contextPath }/user/ReLogin.action",
              type:"post",
              data:{"password":pwd},
              success:function (data) {
                  if(data && data == "yes"){
                      flag=true;
                  }
                  else {
                      alert("密码错误！！！");
                      flag=false;
                  }
              }
          });
      }
      return flag;
  }
</script>

  <div class="modal-over" id="myModal">
    <form action="#" onsubmit="return check_form()" method="post">
    <div class="modal-center animated fadeInUp text-center" style="width:200px;margin:-80px 0 0 -100px;">
      <div class="thumb-md"><img src="${pageContext.request.contextPath }/images/a0.png" class="img-circle b-a b-light b-3x"></div>
      <p class="text-white h4 m-t m-b">${user.userName }</p>
      <div class="input-group">
        <input id="pwd" type="password" name="password" class="form-control text-sm btn-rounded" placeholder="Enter pwd to continue">
        <span class="input-group-btn">
          <button class="btn btn-success btn-rounded" type="submit" <%--data-dismiss="modal"--%>><i class="fa fa-arrow-right"></i></button>
        </span>
        <span id="ReloginMsg">${ReloginMsg }</span>
      </div>
    </div>
    </form>
  </div>

<%--
<script>
  function Reload() {
      window.open("${pageContext.request.contextPath }/user/ReLogin.action}");
  }

</script>
--%>

