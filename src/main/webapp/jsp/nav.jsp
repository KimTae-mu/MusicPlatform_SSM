<%--
  Created by IntelliJ IDEA.
  User: taeyeon
  Date: 17-11-21
  Time: 下午7:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="nav-primary hidden-xs">
    <ul class="nav bg clearfix">
        <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
            Discover
        </li>
        <li>
            <a href="index.jsp">
                <i class="icon-disc icon text-success"></i>
                <span class="font-bold">What's new</span>
            </a>
        </li>
        <li>
            <a href="genres.jsp">
                <i class="icon-music-tone-alt icon text-info"></i>
                <span class="font-bold">Genres</span>
            </a>
        </li>
        <li>
            <a href="events.jsp">
                <i class="icon-drawer icon text-primary-lter"></i>
                <b class="badge bg-primary pull-right">6</b>
                <span class="font-bold">Events</span>
            </a>
        </li>
        <li>
            <a href="listen.jsp">
                <i class="icon-list icon  text-info-dker"></i>
                <span class="font-bold">Listen</span>
            </a>
        </li>
        <li>
            <a href="video.jsp" data-target="#content" data-el="#bjax-el" data-replace="true">
                <i class="icon-social-youtube icon  text-primary"></i>
                <span class="font-bold">Video</span>
            </a>
        </li>
        <li class="m-b hidden-nav-xs"></li>
    </ul>
    <ul class="nav" data-ride="collapse">
        <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
            Interface
        </li>
        <li >
            <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                <i class="icon-screen-desktop icon">
                </i>
                <span>Layouts</span>
            </a>
            <ul class="nav dk text-sm">
                <li >
                    <a href="layout-color.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Color option</span>
                    </a>
                </li>
                <li >
                    <a href="layout-boxed.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Boxed layout</span>
                    </a>
                </li>
                <li >
                    <a href="layout-fluid.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Fluid layout</span>
                    </a>
                </li>
            </ul>
        </li>
        <li >
            <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                <i class="icon-chemistry icon">
                </i>
                <span>UI Kit</span>
            </a>
            <ul class="nav dk text-sm">
                <li >
                    <a href="buttons.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Buttons</span>
                    </a>
                </li>
                <li >
                    <a href="icons.jsp" class="auto">
                        <b class="badge bg-info pull-right">369</b>
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Icons</span>
                    </a>
                </li><li >
                <a href="http://www.weidea.net" class="auto">
                    <b class="badge bg-info pull-right">369</b>
                    <i class="fa fa-angle-right text-xs"></i>

                    <span>More</span>
                </a>
            </li>
                <li >
                    <a href="grid.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Grid</span>
                    </a>
                </li>
                <li >
                    <a href="widgets.jsp" class="auto">
                        <b class="badge bg-dark pull-right">8</b>
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Widgets</span>
                    </a>
                </li>
                <li >
                    <a href="components.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Components</span>
                    </a>
                </li>
                <li >
                    <a href="list.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>List group</span>
                    </a>
                </li>
                <li >
                    <a href="#table" class="auto">
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Table</span>
                    </a>
                    <ul class="nav dker">
                        <li >
                            <a href="table-static.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Table static</span>
                            </a>
                        </li>
                        <li >
                            <a href="table-datatable.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Datatable</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li >
                    <a href="#form" class="auto">
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Form</span>
                    </a>
                    <ul class="nav dker">
                        <li >
                            <a href="form-elements.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Form elements</span>
                            </a>
                        </li>
                        <li >
                            <a href="form-validation.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Form validation</span>
                            </a>
                        </li>
                        <li >
                            <a href="form-wizard.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Form wizard</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li >
                    <a href="chart.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Chart</span>
                    </a>
                </li>
                <li >
                    <a href="portlet.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Portlet</span>
                    </a>
                </li>
                <li >
                    <a href="timeline.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Timeline</span>
                    </a>
                </li>
            </ul>
        </li>
        <li >
            <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                <i class="icon-grid icon">
                </i>
                <span>Pages</span>
            </a>
            <ul class="nav dk text-sm">
                <li >
                    <a href="profile.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Profile</span>
                    </a>
                </li>
                <li >
                    <a href="blog.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Blog</span>
                    </a>
                </li>
                <li >
                    <a href="invoice.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Invoice</span>
                    </a>
                </li>
                <li >
                    <a href="gmap.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Google Map</span>
                    </a>
                </li>
                <li >
                    <a href="jvectormap.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Vector Map</span>
                    </a>
                </li>
                <li >
                    <a href="signin.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Signin</span>
                    </a>
                </li>
                <li >
                    <a href="signup.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>Signup</span>
                    </a>
                </li>
                <li >
                    <a href="404.jsp" class="auto">
                        <i class="fa fa-angle-right text-xs"></i>

                        <span>404</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
    <ul class="nav text-sm">
        <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
            <span class="pull-right"><a href="#"><i class="icon-plus i-lg"></i></a></span>
            Playlist
        </li>
        <li>
            <a href="#">
                <i class="icon-music-tone icon"></i>
                <span>Hip-Pop</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="icon-playlist icon text-success-lter"></i>
                <b class="badge bg-success dker pull-right">9</b>
                <span>Jazz</span>
            </a>
        </li>
    </ul>
</nav>