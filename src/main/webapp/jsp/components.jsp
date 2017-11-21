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
        <a href="${pageContext.request.contextPath }/jsp/index.jsp" class="navbar-brand text-lt">
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
                <a href="${pageContext.request.contextPath }/jsp/modal.lockme.jsp" data-toggle="ajaxModal" >Logout</a>
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
                      <a href="${pageContext.request.contextPath }/jsp/index.jsp">
                        <i class="icon-disc icon text-success"></i>
                        <span class="font-bold">What's new</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/genres.jsp">
                        <i class="icon-music-tone-alt icon text-info"></i>
                        <span class="font-bold">Genres</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/events.jsp">
                        <i class="icon-drawer icon text-primary-lter"></i>
                        <b class="badge bg-primary pull-right">6</b>
                        <span class="font-bold">Events</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/listen.jsp">
                        <i class="icon-list icon  text-info-dker"></i>
                        <span class="font-bold">Listen</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/video.jsp" data-target="#content" data-el="#bjax-el" data-replace="true">
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
                          <a href="${pageContext.request.contextPath }/jsp/layout-color.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Color option</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/layout-boxed.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Boxed layout</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/layout-fluid.jsp" class="auto">
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
                          <a href="${pageContext.request.contextPath }/jsp/buttons.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Buttons</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/icons.jsp" class="auto">
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
                          <a href="${pageContext.request.contextPath }/jsp/grid.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Grid</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/widgets.jsp" class="auto">
                            <b class="badge bg-dark pull-right">8</b>
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Widgets</span>
                          </a>
                        </li>
                        <li  class="active">
                          <a href="${pageContext.request.contextPath }/jsp/components.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Components</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/list.jsp" class="auto">
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
                              <a href="${pageContext.request.contextPath }/jsp/table-static.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Table static</span>
                              </a>
                            </li>
                            <li >
                              <a href="${pageContext.request.contextPath }/jsp/table-datatable.jsp">
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
                              <a href="${pageContext.request.contextPath }/jsp/form-elements.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Form elements</span>
                              </a>
                            </li>
                            <li >
                              <a href="${pageContext.request.contextPath }/jsp/form-validation.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Form validation</span>
                              </a>
                            </li>
                            <li >
                              <a href="${pageContext.request.contextPath }/jsp/form-wizard.jsp">
                                <i class="fa fa-angle-right"></i>
                                <span>Form wizard</span>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/chart.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Chart</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/portlet.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Portlet</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/timeline.jsp" class="auto">
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
                          <a href="${pageContext.request.contextPath }/jsp/profile.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Profile</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/blog.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Blog</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/invoice.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Invoice</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/gmap.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Google Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/jvectormap.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Vector Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/signin.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Signin</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/signup.jsp" class="auto">
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Signup</span>
                          </a>
                        </li>
                        <li >
                          <a href="${pageContext.request.contextPath }/jsp/404.jsp" class="auto">
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
                        <a href="${pageContext.request.contextPath }/jsp/modal.lockme.jsp" data-toggle="ajaxModal" >Logout</a>
                      </li>
                    </ul>
                  </div>
                </div>            </footer>
          </section>
        </aside>
        <!-- /.aside -->
        <section id="content">
          <section class="vbox">
            <header class="header bg-light dk">
              <p>Components</p>
            </header>
            <section class="scrollable wrapper">
              <div class="row">
                <div class="col-lg-12">
                  <!-- .breadcrumb -->
                  <ul class="breadcrumb">
                    <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fa fa-list-ul"></i> Elements</a></li>
                    <li class="active">Components</li>
                  </ul>
                  <!-- / .breadcrumb -->
                </div>
                <div class="col-lg-6">
                  <!-- .crousel slide -->
                  <section class="panel panel-default">
                    <div class="carousel slide auto panel-body" id="c-slide">
                        <ol class="carousel-indicators out">
                          <li data-target="#c-slide" data-slide-to="0" class="active"></li>
                          <li data-target="#c-slide" data-slide-to="1" class=""></li>
                          <li data-target="#c-slide" data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner">
                          <div class="item active">
                            <p class="text-center">
                              <em class="h4 text-mute">Save your time</em><br>
                              <small class="text-muted">Many components</small>
                            </p>
                          </div>
                          <div class="item">
                            <p class="text-center">
                              <em class="h4 text-mute">Nice and easy to use</em><br>
                              <small class="text-muted">Full documents</small>
                            </p>
                          </div>
                          <div class="item">
                            <p class="text-center">
                              <em class="h4 text-mute">Mobile header first</em><br>
                              <small class="text-muted">Mobile/Tablet/Desktop</small>
                            </p>
                          </div>
                        </div>
                        <a class="left carousel-control" href="#c-slide" data-slide="prev">
                          <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right carousel-control" href="#c-slide" data-slide="next">
                          <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                  </section>
                  <!-- / .carousel slide -->
                </div>
                <div class="col-lg-6">
                  <!-- .crousel fade -->
                  <section class="panel bg-dark">
                    <div class="carousel slide carousel-fade panel-body" id="c-fade">
                        <ol class="carousel-indicators out">
                          <li data-target="#c-fade" data-slide-to="0" class=""></li>
                          <li data-target="#c-fade" data-slide-to="1" class="active"></li>
                          <li data-target="#c-fade" data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner">
                          <div class="item">
                            <p class="text-center">
                              <em class="h4 text-mute">Save your time</em><br>
                              <small class="text-muted">Many components</small>
                            </p>
                          </div>
                          <div class="item active">
                            <p class="text-center">
                              <em class="h4 text-mute">Nice and easy to use</em><br>
                              <small class="text-muted">Full documents</small>
                            </p>
                          </div>
                          <div class="item">
                            <p class="text-center">
                              <em class="h4 text-mute">Mobile header first</em><br>
                              <small class="text-muted">Mobile/Tablet/Desktop</small>
                            </p>
                          </div>
                        </div>
                        <a class="left carousel-control" href="#c-fade" data-slide="prev">
                          <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right carousel-control" href="#c-fade" data-slide="next">
                          <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                  </section>
                  <!-- / .carousel fade -->
                </div>
                <div class="col-lg-6">
                  <!-- .accordion -->
                  <div class="panel-group m-b" id="accordion2">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                          Collapsible Group Item #1
                        </a>
                      </div>
                      <div id="collapseOne" class="panel-collapse in">
                        <div class="panel-body text-sm">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                          Collapsible Group Item #2
                        </a>
                      </div>
                      <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body text-sm">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                          Collapsible Group Item #3
                        </a>
                      </div>
                      <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body text-sm">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- / .accordion -->
                  <!-- .nav-justified -->
                  <section class="panel panel-default">
                    <header class="panel-heading bg-light">
                      <ul class="nav nav-tabs nav-justified">
                        <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
                        <li><a href="#profile" data-toggle="tab">Profile</a></li>
                        <li><a href="#messages" data-toggle="tab">Messages</a></li>
                        <li><a href="#settings" data-toggle="tab">Settings</a></li>
                      </ul>
                    </header>
                    <div class="panel-body">
                      <div class="tab-content">
                        <div class="tab-pane active" id="home">home</div>
                        <div class="tab-pane" id="profile">profile</div>
                        <div class="tab-pane" id="messages">message</div>
                        <div class="tab-pane" id="settings">settings</div>
                      </div>
                    </div>
                  </section>
                  <!-- / .nav-justified -->
                  <!-- left tab -->
                  <section class="panel panel-default">
                    <header class="panel-heading bg-light">
                      <ul class="nav nav-tabs pull-right">
                        <li class="active"><a href="#messages-1" data-toggle="tab"><i class="fa fa-comments text-muted"></i></a></li>
                        <li><a href="#profile-1" data-toggle="tab"><i class="fa fa-user text-muted"></i> Profile</a></li>
                        <li><a href="#settings-1" data-toggle="tab"><i class="fa fa-cog text-muted"></i> Settings</a></li>
                      </ul>
                      <span class="hidden-sm">Right</span>
                    </header>
                    <div class="panel-body">
                      <div class="tab-content">              
                        <div class="tab-pane active" id="messages-1">message</div>
                        <div class="tab-pane" id="profile-1">profile</div>
                        <div class="tab-pane" id="settings-1">settings</div>
                      </div>
                    </div>
                  </section>
                  <!-- / left tab -->
                  <!-- right tab -->
                  <section class="panel panel-default">
                    <header class="panel-heading text-right bg-light">
                      <ul class="nav nav-tabs pull-left">
                        <li><a href="#messages-2" data-toggle="tab"><i class="fa fa-comments text-muted"></i></a></li>
                        <li class="active"><a href="#profile-2" data-toggle="tab"><i class="fa fa-user text-muted"></i> Profile</a></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog text-muted"></i> Settings <b class="caret"></b></a>
                          <ul class="dropdown-menu text-left">
                            <li><a href="#dropdown1" data-toggle="tab">@fat</a></li>
                            <li><a href="#dropdown2" data-toggle="tab">@mdo</a></li>
                          </ul>
                        </li>
                      </ul>
                      <span class="hidden-sm">Left</span>
                    </header>
                    <div class="panel-body">
                      <div class="tab-content">              
                        <div class="tab-pane fade" id="messages-2">message</div>
                        <div class="tab-pane fade active in" id="profile-2">profile</div>
                        <div class="tab-pane fade" id="dropdown1">dropdown1</div>
                        <div class="tab-pane fade" id="dropdown2">dropdown2</div>
                      </div>
                    </div>
                  </section>
                  <!-- / right tab -->
                  <!-- .dropdown -->
                  <section class="panel panel-default pos-rlt clearfix">
                    <header class="panel-heading">
                      <ul class="nav nav-pills pull-right">
                        <li>
                          <a href="#" class="panel-toggle text-muted"><i class="fa fa-caret-down text-active"></i><i class="fa fa-caret-up text"></i></a>
                        </li>
                      </ul>
                      Dropdown
                    </header>
                    <div class="panel-body clearfix">
                      <div class="dropdown pull-left m-r">
                        <ul class="dropdown-menu pos-stc inline" role="menu">
                          <li><a tabindex="-1" href="#">Action</a></li>
                          <li><a tabindex="-1" href="#">Another action</a></li>
                          <li><a tabindex="-1" href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li class="dropdown-submenu">
                            <a tabindex="-1" href="#">Separated link</a>
                            <ul class="dropdown-menu" role="menu">
                              <li><a tabindex="-1" href="#">Action</a></li>
                              <li><a tabindex="-1" href="#">Another action</a></li>
                              <li><a tabindex="-1" href="#">Something else here</a></li>
                            </ul>
                          </li>
                        </ul>
                      </div>
                      <div class="dropdown dropup pull-left">
                        <ul class="dropdown-menu pos-stc inline" role="menu">
                          <li><a tabindex="-1" href="#">Action</a></li>
                          <li><a tabindex="-1" href="#">Another action</a></li>
                          <li><a tabindex="-1" href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li class="dropdown-submenu">
                            <a tabindex="-1" href="#">Separated link</a>
                            <ul class="dropdown-menu" role="menu">
                              <li class="dropdown-submenu  pull-left">
                                <a tabindex="-1" href="#">Action</a>
                                <ul class="dropdown-menu" role="menu">
                                  <li><a tabindex="-1" href="#">Action</a></li>
                                  <li><a tabindex="-1" href="#">Another action</a></li>
                                  <li><a tabindex="-1" href="#">Something else here</a></li>
                                </ul>
                              </li>
                              <li><a tabindex="-1" href="#">Another action</a></li>
                              <li><a tabindex="-1" href="#">Something else here</a></li>
                            </ul>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </section>
                  <!-- / .dropmenu -->
                  <!-- .tooltip & popup -->
                  <section class="panel panel-default text-sm doc-buttons">
                    <div class="panel-body">
                      <button class="btn btn-sm btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>
                      <button class="btn btn-sm btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">On right</button>
                      <button class="btn btn-sm btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">On bottom</button>
                      <button class="btn btn-sm btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left">On left</button>
                      <button class="btn btn-sm btn-info" data-toggle="popover" data-html="true" data-placement="top" data-content="<div class='scrollable' style='height:40px'>Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</div>" title="" data-original-title='<button type="button" class="close pull-right" data-dismiss="popover">&times;</button>Popover on top'>Popover on top</button>
                      <a href="modal.html" data-toggle="ajaxModal" class="btn btn-sm btn-default">Modal</a>
                    </div>
                  </section>
                </div>
                <div class="col-lg-6">
                  <section class="panel panel-default" id="progressbar">
                    <header class="panel-heading">
                      <ul class="nav nav-pills pull-right">
                        <li><a href="#" data-toggle="progress" data-target="#progressbar">Random</a></li>
                      </ul>
                      Progress bar
                    </header>
                    <ul class="list-group">
                      <li class="list-group-item">
                        <div class="progress progress-xs m-t-sm">
                          <div class="progress-bar bg-info" data-toggle="tooltip" data-original-title="40%" style="width: 40%"></div>
                        </div>
                        <div class="progress progress-xs progress-striped">
                          <div class="progress-bar bg-success" data-toggle="tooltip" data-original-title="10%" style="width: 10%"></div>
                        </div>
                        <div class="progress progress-xs progress-striped">
                          <div class="progress-bar bg-warning" data-toggle="tooltip" data-original-title="50%" style="width: 50%"></div>
                        </div>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar bg-danger" data-toggle="tooltip" data-original-title="30%" style="width: 30%"></div>
                        </div>
                      </li>
                      <li class="list-group-item">
                        <div class="progress progress-sm m-t-sm">
                          <div class="progress-bar bg-primary" data-toggle="tooltip" data-original-title="10%" style="width: 10%"></div>
                        </div>
                        <div class="progress progress-sm progress-striped  active">
                          <div class="progress-bar bg-info lter" data-toggle="tooltip" data-original-title="30%" style="width: 30%"></div>
                        </div>
                        <div class="progress progress-sm progress-striped">
                          <div class="progress-bar bg-warning" data-toggle="tooltip" data-original-title="20%" style="width: 20%"></div>
                        </div>
                        <div class="progress progress-sm progress-striped">
                          <div class="progress-bar bg-danger" data-toggle="tooltip" data-original-title="10%" style="width: 10%"></div>
                        </div>
                      </li>
                      <li class="list-group-item">
                        <div class="progress m-t-sm">
                          <div class="progress-bar bg-success" data-toggle="tooltip" data-original-title="20%" style="width: 20%"></div>
                          <div class="progress-bar bg-success lt" data-toggle="tooltip" data-original-title="20%" style="width: 20%"></div>
                          <div class="progress-bar bg-success lter" data-toggle="tooltip" data-original-title="15%" style="width: 15%"></div>
                        </div>
                      </li>
                    </ul>
                  </section>
                </div>
                <div class="col-lg-6">
                  <!-- .label and .badge -->
                  <div class="m-b-lg text-center">
                    <p>
                      <span class="label bg-light">label</span>
                      <span class="label bg-primary">Primary</span>
                      <span class="label bg-success">Success</span>
                      <span class="label bg-info">Info</span>
                      <span class="label bg-dark">dark</span>
                      <span class="label bg-warning">Warning</span>
                      <span class="label bg-danger">Danger</span>
                    </p>
                    <p class="m-b-none">
                      <span class="badge">15</span>
                       <span class="badge bg-primary">15</span>
                      <span class="badge bg-success">20</span>
                      <span class="badge bg-info">21</span>
                      <span class="badge bg-dark">13</span>
                      <span class="badge bg-warning">35</span>
                      <span class="badge bg-danger">32</span>
                    </p>
                  </div>
                  <!-- / .label and .badge -->
                  <div class="alert alert-warning alert-block">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <h4><i class="fa fa-bell-alt"></i>Warning!</h4>
                    <p>Best check yo self, you're not looking too good...</p>
                  </div>
                  <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-ban-circle"></i><strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
                  </div>
                  <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-ok-sign"></i><strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
                  </div>
                  <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-info-sign"></i><strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.
                  </div>
                  <div class="text-center">
                    <ul class="pagination pagination-lg">
                      <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                      <li class="active"><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                  </div>
                  <div class="text-center">
                    <ul class="pagination pagination">
                      <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                  </div>
                  <div class="text-center">
                    <ul class="pagination pagination-sm">
                      <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                  </div>
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
  
  <script src="${pageContext.request.contextPath }/js/app.plugin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/demo.js"></script>

</body>
</html>
