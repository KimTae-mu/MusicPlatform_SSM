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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/js/nestable/nestable.css" type="text/css" />
  <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/js/ie/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath }/js/ie/respond.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
  <section class="vbox">
    <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
      <div class="navbar-header aside bg-info dk">
        <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
          <i class="icon-list"></i>
        </a>
        <a href="index.jsp" class="navbar-brand text-lt">
          <i class="icon-earphones"></i>
          <img src="${pageContext.request.contextPath }/images/logo.png" alt="." class="hide">
          <span class="hidden-nav-xs m-l-sm">Musik</span>
        </a>
        <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
          <i class="icon-settings"></i>
        </a>
      </div>      <ul class="nav navbar-nav hidden-xs">
        <li>
          <a href="#nav,.navbar-header" data-toggle="class:nav-xs,nav-xs" class="text-muted">
            <i class="fa fa-indent text"></i>
            <i class="fa fa-dedent text-active"></i>
          </a>
        </li>
      </ul>
      <form class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs" role="search">
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i class="fa fa-search"></i></button>
            </span>
            <input type="text" class="form-control input-sm no-border rounded" placeholder="Search songs, albums...">
          </div>
        </div>
      </form>
      <%--<div class="navbar-right ">
        <ul class="nav navbar-nav m-n hidden-xs nav-user user">
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
              John.Smith <b class="caret"></b>
            </a>
            <ul class="dropdown-menu animated fadeInRight">            
              <li>
                <span class="arrow top"></span>
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
                <a href="modal.lockme.jsp" data-toggle="ajaxModal" >Logout</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>--%>
      <%@include file="top.jsp"%>
    </header>
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
        <aside class="bg-black dk aside hidden-print" id="nav">          
          <section class="vbox">
            <section class="w-f-md scrollable">
              <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                


                <!-- nav -->                 
                <%--<nav class="nav-primary hidden-xs">
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
                    <li  class="active">
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
                        <li  class="active">
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
                </nav>--%>
                <!-- / nav -->
                <%@include file="nav.jsp"%>
              </div>
            </section>
            
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
                          <strong class="font-bold text-lt">John.Smith</strong> 
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
                        <a href="modal.lockme.jsp" data-toggle="ajaxModal" >Logout</a>
                      </li>
                    </ul>
                  </div>
                </div>            </footer>
          </section>
        </aside>
        <!-- /.aside -->
        <section id="content">
          <section class="vbox">
            <header class="header bg-light b-b">
              <p>List groups</p>
            </header>
            <section class="scrollable wrapper">
              <div class="">
                <h4 class="m-t-none">Sortable list <small>(drag to sort)</small></h4>
                <ul class="list-group gutter list-group-lg list-group-sp sortable">
                  <li class="list-group-item bg-info">
                    <span class="pull-right" >
                      <a href="#"><i class="fa fa-pencil fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-plus fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-times fa-fw"></i></a>                  
                    </span>
                    <span class="pull-left media-xs"><i class="fa fa-sort text-muted fa m-r-sm"></i> 01</span>
                    <div class="clear text-white">
                      Browser compatibility
                    </div>
                  </li>
                  <li class="list-group-item bg-primary">
                    <span class="pull-right" >
                      <a href="#"><i class="fa fa-pencil fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-plus fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-times fa-fw"></i></a>                  
                    </span>
                    <span class="pull-left media-xs"><i class="fa fa-sort text-muted fa m-r-sm"></i> 02</span>
                    <div class="clear text-white">
                      Looking for more example templates
                    </div>
                  </li>
                  <li class="list-group-item bg-success">
                   <span class="pull-right" >
                      <a href="#"><i class="fa fa-pencil fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-plus fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-times fa-fw"></i></a>                  
                    </span>
                    <span class="pull-left media-xs"><i class="fa fa-sort text-muted fa m-r-sm"></i> 03</span>
                    <div class="clear text-white">
                      Customizing components
                    </div>
                  </li>
                  <li class="list-group-item">
                    <span class="pull-right" >
                      <a href="#"><i class="fa fa-pencil icon-muted fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-plus icon-muted fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-times icon-muted fa-fw"></i></a>                  
                    </span>
                    <span class="pull-left media-xs"><i class="fa fa-sort text-muted fa m-r-sm"></i> 04</span>
                    <div class="clear">
                      The fastest way to get started
                    </div>
                  </li>
                  <li class="list-group-item">
                    <span class="pull-right" >
                      <a href="#"><i class="fa fa-pencil icon-muted fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-plus icon-muted fa-fw m-r-xs"></i></a>
                      <a href="#"><i class="fa fa-times icon-muted fa-fw"></i></a>                  
                    </span>
                    <span class="pull-left media-xs"><i class="fa fa-sort text-muted fa m-r-sm"></i> 05</span>
                    <div class="clear">
                      HTML5 doctype required
                    </div>
                  </li>
                </ul>
              </div>
              <h4 class="m-t-none">Nestable list 
                <button id="nestable-menu" class="btn btn-xs btn-default active" data-toggle="button">
                  <i class="fa fa-plus text fa-fw"></i>
                  <span class="text">Expand All</span>
                  <i class="fa fa-minus text-active fa-fw"></i>
                  <span class="text-active">Collapse All</span>
                </button>
              </h4>
              <div class="row m-b">
                <div class="col-sm-4">              
                  <div class="dd" id="nestable1">
                    <ol class="dd-list">
                      <li class="dd-item" data-id="1">
                          <div class="dd-handle">Item 1</div>
                      </li>
                      <li class="dd-item" data-id="2">
                          <div class="dd-handle">Item 2</div>
                          <ol class="dd-list">
                              <li class="dd-item" data-id="3"><div class="dd-handle">Item 3</div></li>
                              <li class="dd-item" data-id="4"><div class="dd-handle">Item 4</div></li>
                              <li class="dd-item" data-id="5">
                                  <div class="dd-handle">Item 5</div>
                                  <ol class="dd-list">
                                      <li class="dd-item" data-id="6"><div class="dd-handle">Item 6</div></li>
                                      <li class="dd-item" data-id="7"><div class="dd-handle">Item 7</div></li>
                                      <li class="dd-item" data-id="8"><div class="dd-handle">Item 8</div></li>
                                  </ol>
                              </li>
                              <li class="dd-item" data-id="9"><div class="dd-handle">Item 9</div></li>
                          </ol>
                      </li>
                  </ol>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="dd" id="nestable2">
                    <ol class="dd-list">
                      <li class="dd-item" data-id="10">                    
                        <div class="dd-handle">Item 10</div>
                        <ol class="dd-list">
                          <li class="dd-item" data-id="11">
                            <div class="dd-handle">Item 11</div>
                          </li>
                        </ol>
                      </li>                  
                      <li class="dd-item" data-id="12">
                          <div class="dd-handle">Item 12</div>
                      </li>
                      <li class="dd-item" data-id="13">
                          <div class="dd-handle">Item 13</div>
                      </li>
                      <li class="dd-item" data-id="14">
                          <div class="dd-handle">Item 14</div>
                      </li>
                      <li class="dd-item" data-id="15">
                          <div class="dd-handle">Item 15</div>
                          <ol class="dd-list">
                              <li class="dd-item" data-id="16"><div class="dd-handle">Item 16</div></li>
                              <li class="dd-item" data-id="17"><div class="dd-handle">Item 17</div></li>
                              <li class="dd-item" data-id="18"><div class="dd-handle">Item 18</div></li>
                          </ol>
                      </li>
                    </ol>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="dd" id="nestable3">
                    <ol class="dd-list">
                      <li class="dd-item dd3-item" data-id="13">
                          <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 13</div>
                      </li>
                      <li class="dd-item dd3-item" data-id="14">
                          <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 14</div>
                      </li>
                      <li class="dd-item dd3-item" data-id="15">
                          <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 15</div>
                          <ol class="dd-list">
                              <li class="dd-item dd3-item" data-id="16">
                                  <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 16</div>
                              </li>
                              <li class="dd-item dd3-item" data-id="17">
                                  <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 17</div>
                              </li>
                              <li class="dd-item dd3-item" data-id="18">
                                  <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 18</div>
                              </li>
                          </ol>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
              <div class="row">            
                <div class="col-sm-6">
                  <div class="list-group">
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge badge-empty">201</span>
                      <i class="fa fa-envelope icon-muted fa-fw"></i> Inbox
                    </a>
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge bg-info">5021</span>
                      <i class="fa fa-eye icon-muted fa-fw"></i> Profile visits
                    </a>
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge bg-success">14</span>
                      <i class="fa fa-phone icon-muted fa-fw"></i> Call
                    </a>
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge bg-dark">20</span>
                      <i class="fa fa-comments-o icon-muted fa-fw"></i> Messages
                    </a>
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge bg-warning">14</span>
                      <i class="fa fa-bookmark icon-muted fa-fw"></i> Bookmarks
                    </a>
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge bg-info">30</span>
                      <i class="fa fa-bell icon-muted fa-fw"></i> Notifications
                    </a>
                    <a href="#" class="list-group-item">
                      <i class="fa fa-chevron-right icon-muted"></i>
                      <span class="badge bg-danger">10</span>
                      <i class="fa fa-clock-o icon-muted fa-fw"></i> Watch
                    </a>
                  </div>
                </div>
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <header class="panel-heading">
                      <div class="input-group text-sm">
                        <input type="text" class="input-sm form-control" placeholder="Search">
                        <div class="input-group-btn">
                          <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                          <ul class="dropdown-menu pull-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </div>
                      </div>
                    </header>
                    <ul class="list-group alt">
                      <li class="list-group-item">
                        <div class="media">
                          <span class="pull-left thumb-sm"><img src="${pageContext.request.contextPath }/images/a0.png" alt="John said" class="img-circle"></span>
                          <div class="pull-right text-success m-t-sm">
                            <i class="fa fa-circle"></i>
                          </div>
                          <div class="media-body">
                            <div><a href="#">Chris Fox</a></div>
                            <small class="text-muted">about 2 minutes ago</small>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item">
                        <div class="media">
                          <span class="pull-left thumb-sm"><img src="${pageContext.request.contextPath }/images/a0.png" alt="John said" class="img-circle"></span>
                          <div class="pull-right text-muted m-t-sm">
                            <i class="fa fa-circle"></i>
                          </div>
                          <div class="media-body">
                            <div><a href="#">Amanda Conlan</a></div>
                            <small class="text-muted">about 2 hours ago</small>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item">
                        <div class="media">
                          <span class="pull-left thumb-sm"><img src="${pageContext.request.contextPath }/images/a0.png" alt="John said" class="img-circle"></span>
                          <div class="pull-right text-warning m-t-sm">
                            <i class="fa fa-circle"></i>
                          </div>
                          <div class="media-body">
                            <div><a href="#">Dan Doorack</a></div>
                            <small class="text-muted">3 days ago</small>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item">
                        <div class="media">
                          <span class="pull-left thumb-sm"><img src="${pageContext.request.contextPath }/images/a0.png" alt="John said" class="img-circle"></span>
                          <div class="pull-right text-danger m-t-sm">
                            <i class="fa fa-circle"></i>
                          </div>
                          <div class="media-body">
                            <div><a href="#">Lauren Taylor</a></div>
                            <small class="text-muted">about 2 minutes ago</small>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </section>          
                </div>
              </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
  <!-- App -->
  <script src="${pageContext.request.contextPath }/js/app.js"></script>
  <script src="${pageContext.request.contextPath }/js/slimscroll/jquery.slimscroll.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/sortable/jquery.sortable.js"></script>
<script src="${pageContext.request.contextPath }/js/nestable/jquery.nestable.js"></script>
<script src="${pageContext.request.contextPath }/js/nestable/demo.js"></script>
  <script src="${pageContext.request.contextPath }/js/app.plugin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/demo.js"></script>

</body>
</html>
