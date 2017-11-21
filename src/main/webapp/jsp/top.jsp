<%--
  Created by IntelliJ IDEA.
  User: taeyeon
  Date: 17-11-21
  Time: 下午6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="navbar-right ">
    <ul class="nav navbar-nav m-n hidden-xs nav-user user">


        <c:if test="${user != null}">

            <li class="hidden-xs">
                <a href="#" class="dropdown-toggle lt" data-toggle="dropdown">
                    <i class="icon-bell"></i>
                    <span class="badge badge-sm up bg-danger count">2</span>
                </a>
                <section class="dropdown-menu aside-xl animated fadeInUp">
                    <section class="panel bg-white">
                        <div class="panel-heading b-light bg-light">
                            <strong>You have <span class="count">2</span> notifications</strong>
                        </div>
                        <div class="list-group list-group-alt">
                            <a href="#" class="media list-group-item">
                      <span class="pull-left thumb-sm">
                        <img src="${pageContext.request.contextPath }/images/a0.png" alt="..." class="img-circle">
                      </span>
                                <span class="media-body block m-b-none">
                        Use awesome animate.css<br>
                        <small class="text-muted">10 minutes ago</small>
                      </span>
                            </a>
                            <a href="#" class="media list-group-item">
                      <span class="media-body block m-b-none">
                        1.0 initial released<br>
                        <small class="text-muted">1 hour ago</small>
                      </span>
                            </a>
                        </div>
                        <div class="panel-footer text-sm">
                            <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                            <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                        </div>
                    </section>
                </section>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
                  <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                    <img src="${pageContext.request.contextPath }/images/a0.png" alt="...">
                  </span>
                        ${user.userName } <b class="caret"></b>
                </a>
                <ul class="dropdown-menu animated fadeInRight">
                    <li>
                        <span class="arrow top"></span>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/jsp/profile.jsp">Profile</a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="badge bg-danger pull-right">3</span>
                            Notifications
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/jsp/docs.jsp">Help</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="modal.lockme.jsp" data-toggle="ajaxModal" >Lock me</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/user/Logout.action" onClick="return confirm('确定退出?');">Logout</a>
                    </li>
                </ul>
            </li>

        </c:if>
        <c:if test="${user == null}">
            <li class="dropdown">
                <a class="text-bold text-black no-underline" href="${pageContext.request.contextPath }/user/signin.action" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
            </li>
            <li class="dropdown">
                <a class="text-bold text-black no-underline" href="${pageContext.request.contextPath }/user/signup.action" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign up</a>
            </li>
        </c:if>
    </ul>
</div>
