<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
  function Relogin() {
      val pwd=$("#pwd").val();
      if(pwd.trim() == ""){

      }
  }

</script>

<div class="modal-over">
  <div class="modal-center animated fadeInUp text-center" style="width:200px;margin:-80px 0 0 -100px;">
    <div class="thumb-md"><img src="${pageContext.request.contextPath }/images/a0.png" class="img-circle b-a b-light b-3x"></div>
    <p class="text-white h4 m-t m-b">${user.userName }</p>
    <div class="input-group">
      <input id="pwd" type="password" name="password" class="form-control text-sm btn-rounded" placeholder="Enter pwd to continue">
      <span class="input-group-btn">
        <button onclick="Relogin()" class="btn btn-success btn-rounded" type="button" data-dismiss="modal"><i class="fa fa-arrow-right"></i></button>
      </span>
      <span></span>
    </div>
  </div>
</div>
