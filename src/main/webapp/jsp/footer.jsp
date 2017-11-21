<%--
  Created by IntelliJ IDEA.
  User: taeyeon
  Date: 17-11-21
  Time: 下午9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${user != null}">
    <footer class="footer hidden-xs no-padder text-center-nav-xs">
        <div class="bg hidden-xs ">
            <div class="dropdown dropup wrapper-sm clearfix">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <span class="thumb-sm avatar pull-left m-l-xs">
                        <img src="${pageContext.request.contextPath }/images/a3.png" class="dker" alt="...">
                        <i class="on b-black"></i>
                      </span>
                    <span class="hidden-nav-xs clear">
                        <span class="block m-l">
                          <strong class="font-bold text-lt">${user.userName }</strong>
                          <b class="caret"></b>
                        </span>
                        <span class="text-muted text-xs block m-l">Art Director</span>
                      </span>
                </a>
                <ul class="dropdown-menu animated fadeInRight aside text-left">
                    <li>
                        <span class="arrow bottom hidden-nav-xs"></span>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="profile.jsp">Profile</a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="badge bg-danger pull-right">3</span>
                            Notifications
                        </a>
                    </li>
                    <li>
                        <a href="docs.jsp">Help</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="modal.lockme.jsp" data-toggle="ajaxModal" >Lock me</a>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
</c:if>

<c:if test="${user == null}">
    <footer class="footer hidden-xs no-padder text-center-nav-xs">
        <div class="bg hidden-xs ">
            <div class="dropdown dropup wrapper-sm clearfix">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <span class="thumb-sm avatar pull-left m-l-xs">
                        <img src="${pageContext.request.contextPath }/images/a3.png" class="dker" alt="...">
                        <%--<i class="on b-black"></i>--%>
                      </span>
                    <span class="hidden-nav-xs clear">
                        <span class="block m-l">
                          <strong class="font-bold text-lt">用户未登录</strong>
                          <%--<b class="caret"></b>--%>
                        </span>
                      </span>
                </a>
            </div>
        </div>
    </footer>
</c:if>