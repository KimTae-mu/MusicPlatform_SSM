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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/js/datepicker/datepicker.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/slider/slider.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/chosen/chosen.css" type="text/css" />
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
                        <li >
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
                        <li  class="active">
                          <a href="#form" class="auto">
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Form</span>
                          </a>
                          <ul class="nav dker">
                            <li  class="active">
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
            <section class="scrollable padder">
              <div class="m-b-md">
                <h3 class="m-b-none">Elements</h3>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Basic form</header>
                    <div class="panel-body">
                      <form role="form">
                        <div class="form-group">
                          <label>Email address</label>
                          <input type="email" class="form-control" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                          <label>Password</label>
                          <input type="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox i-checks">
                          <label>
                            <input type="checkbox" checked disabled><i></i> Check me out
                          </label>
                        </div>
                        <button type="submit" class="btn btn-sm btn-default">Submit</button>
                      </form>
                    </div>
                  </section>
                </div>
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Horizontal form</header>
                    <div class="panel-body">
                      <form class="bs-example form-horizontal">
                        <div class="form-group">
                          <label class="col-lg-2 control-label">Email</label>
                          <div class="col-lg-10">
                            <input type="email" class="form-control" placeholder="Email">
                            <span class="help-block m-b-none">Example block-level help text here.</span>
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">Password</label>
                          <div class="col-lg-10">
                            <input type="password" class="form-control" placeholder="Password">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-lg-offset-2 col-lg-10">
                            <div class="checkbox i-checks">
                              <label>
                                <input type="checkbox" checked><i></i> Remember me
                              </label>
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-lg-offset-2 col-lg-10">
                            <button type="submit" class="btn btn-sm btn-default">Sign in</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </section>
                </div>
              </div>
              <section class="panel panel-default">
                <header class="panel-heading font-bold">                  
                  Inline form
                </header>
                <div class="panel-body">
                  <form class="form-inline" role="form">
                    <div class="form-group">
                      <label class="sr-only" for="exampleInputEmail2">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                      <label class="sr-only" for="exampleInputPassword2">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                    </div>
                    <div class="checkbox m-l m-r-xs">
                      <label class="i-checks">
                        <input type="checkbox"><i></i> Remember me
                      </label>
                    </div>
                    <button type="submit" class="btn btn-default">Sign in</button>
                    <a href="#modal-form" class="btn btn-success" data-toggle="modal">Form in a modal</a>
                  </form>                  
                </div>
              </section>
              <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Form elements
                </header>
                <div class="panel-body">
                  <form class="form-horizontal" method="get">
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Rounded</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control rounded">                        
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">With help</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control">
                        <span class="help-block m-b-none">A block of help text that breaks onto a new line and may extend beyond one line.</span>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-id-1">Label focus</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="input-id-1">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Password</label>
                      <div class="col-sm-10">
                        <input type="password" name="password" class="form-control">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Placeholder</label>
                      <div class="col-sm-10">
                        <input type="text"  class="form-control" placeholder="placeholder">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">Disabled</label>
                      <div class="col-lg-10">
                        <input class="form-control" type="text" placeholder="Disabled input here..." disabled>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">Static control</label>
                      <div class="col-lg-10">
                        <p class="form-control-static">email@example.com</p>
                      </div>
                    </div>                    
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Checkboxes and radios</label>
                      <div class="col-sm-10">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" value="">
                            Option one is this and that&mdash;be sure to include why it's great
                          </label>
                        </div>

                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                            Option one is this and that&mdash;be sure to include why it's great
                          </label>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                            Option two can be something else and selecting it will deselect option one
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Inline checkboxes</label>
                      <div class="col-sm-10">
                        <label class="checkbox-inline">
                          <input type="checkbox" value="option1"> a
                        </label>
                        <label class="checkbox-inline">
                          <input type="checkbox" value="option2"> b
                        </label>
                        <label class="checkbox-inline">
                          <input type="checkbox" value="option3"> c
                        </label>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Custom Checkboxes & radios</label>
                      <div class="col-sm-10">
                        <div class="checkbox i-checks">
                          <label>
                            <input type="checkbox" value="">
                            <i></i>
                            Option one
                          </label>
                        </div>
                        <div class="checkbox i-checks">
                          <label>
                            <input type="checkbox" checked value="">
                            <i></i>
                            Option two checked
                          </label>
                        </div>
                        <div class="checkbox i-checks">
                          <label>
                            <input type="checkbox" checked disabled value="">
                            <i></i>
                            Option three checked and disabled
                          </label>
                        </div>
                        <div class="checkbox i-checks">
                          <label>
                            <input type="checkbox" disabled value="">
                            <i></i>
                            Option four disabled
                          </label>
                        </div>
                        <div class="radio i-checks">
                          <label>
                            <input type="radio" name="a" value="option1">
                            <i></i>
                            Option one
                          </label>
                        </div>
                        <div class="radio i-checks">
                          <label>
                            <input type="radio" name="a" value="option2" checked>
                            <i></i>
                            Option two checked
                          </label>
                        </div>
                        <div class="radio i-checks">
                          <label>
                            <input type="radio" value="option2" checked disabled>
                            <i></i>
                            Option three checked and disabled
                          </label>
                        </div>
                        <div class="radio i-checks">
                          <label>
                            <input type="radio" name="a" disabled>
                            <i></i>
                            Option four disabled
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Inline checkboxes</label>
                      <div class="col-sm-10">
                        <label class="checkbox-inline i-checks">
                          <input type="checkbox" value="option1"><i></i> a
                        </label>
                        <label class="checkbox-inline i-checks">
                          <input type="checkbox" value="option2"><i></i> b
                        </label>
                        <label class="checkbox-inline i-checks">
                          <input type="checkbox" value="option3"><i></i> c
                        </label>
                      </div>
                    </div>          
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Select</label>
                      <div class="col-sm-10">
                        <select name="account" class="form-control m-b">
                          <option>option 1</option>
                          <option>option 2</option>
                          <option>option 3</option>
                          <option>option 4</option>
                        </select>
                        <div class="col-lg-4 m-l-n">
                          <select multiple class="form-control">
                            <option>option 1</option>
                            <option>option 2</option>
                            <option>option 3</option>
                            <option>option 4</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group has-success">
                      <label class="col-sm-2 control-label">Input with success</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group has-warning">
                      <label class="col-sm-2 control-label">Input with warning</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group has-error">
                      <label class="col-sm-2 control-label">Input with error</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Control sizing</label>
                      <div class="col-sm-10">
                        <input class="form-control input-lg m-b" type="text" placeholder=".input-lg">
                        <input class="form-control m-b" type="text" placeholder="Default input">
                        <input class="form-control input-sm" type="text" placeholder=".input-sm">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Column sizing</label>
                      <div class="col-sm-10">
                        <div class="row">
                          <div class="col-md-2">
                            <input type="text" class="form-control" placeholder=".col-md-2">
                          </div>
                          <div class="col-md-3">
                            <input type="text" class="form-control" placeholder=".col-md-3">
                          </div>
                          <div class="col-md-4">
                            <input type="text" class="form-control" placeholder=".col-md-4">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Input groups</label>
                      <div class="col-sm-10">
                        <div class="input-group m-b">
                          <span class="input-group-addon">@</span>
                          <input type="text" class="form-control" placeholder="Username">
                        </div>
                        <div class="input-group m-b">
                          <input type="text" class="form-control">
                          <span class="input-group-addon">.00</span>
                        </div>
                        <div class="input-group m-b">
                          <span class="input-group-addon">$</span>
                          <input type="text" class="form-control">
                          <span class="input-group-addon">.00</span>
                        </div>
                        <div class="input-group m-b">
                          <span class="input-group-addon">
                            <input type="checkbox">
                          </span>
                          <input type="text" class="form-control">
                        </div>
                        <div class="input-group">
                          <span class="input-group-addon">
                            <input type="radio">
                          </span>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Button addons</label>
                      <div class="col-sm-10">
                        <div class="input-group m-b">
                          <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                          </span>
                          <input type="text" class="form-control">
                        </div>
                        <div class="input-group">
                          <input type="text" class="form-control">
                          <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">With dropdowns</label>
                      <div class="col-sm-10">
                        <div class="input-group m-b">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div><!-- /btn-group -->
                          <input type="text" class="form-control">
                        </div>
                        <div class="input-group">
                          <input type="text" class="form-control">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                            <ul class="dropdown-menu pull-right">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div><!-- /btn-group -->
                        </div>
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Segmented</label>
                      <div class="col-sm-10">
                        <div class="input-group m-b">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default" tabindex="-1">Action</button>
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div><!-- /btn-group -->
                          <input type="text" class="form-control">
                        </div>
                        <div class="input-group">
                          <input type="text" class="form-control">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default" tabindex="-1">Action</button>
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu pull-right">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div><!-- /btn-group -->
                        </div>
                      </div>
                    </div>
                    
                    
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Dropdown select</label>
                      <div class="col-sm-10">              
                        <div class="btn-group m-r">
                          <button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle">
                            <span class="dropdown-label">Option1</span> 
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu dropdown-select">
                              <li class="active"><input type="radio" name="d-s-r" checked=""><a href="#">Option1</a></li>
                              <li><input type="radio" name="d-s-r"><a href="#">Option2</a></li>
                              <li><input type="radio" name="d-s-r"><a href="#">Option3</a></li>
                              <li class="disabled"><input type="radio" name="d-s-r" disabled=""><a href="#">I'm disabled</a></li>
                          </ul>
                        </div>
                        <div class="btn-group m-r">
                          <button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle">
                            <span class="dropdown-label" data-placeholder="Please select">Please select</span> 
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu dropdown-select">
                              <li><input type="checkbox" name="d-s-c-1"><a href="#">Option1</a></li>
                              <li><input type="checkbox" name="d-s-c-2"><a href="#">Option2</a></li>
                              <li><input type="checkbox" name="d-s-c-3"><a href="#">Option3</a></li>
                              <li><input type="checkbox" name="d-s-c-4"><a href="#">Option4</a></li>
                              <li><input type="checkbox" name="d-s-c-5"><a href="#">Option5</a></li>
                          </ul>
                        </div>
                        <div class="inline v-middle">
                          <div class="input-group input-s-sm">
                              <input type="text" id="appendedInput" class="input-sm form-control">
                              <div class="input-group-btn">
                                <button class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                  <span class="dropdown-label">USD</span>  
                                  <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-select pull-right">
                                  <li class="active">
                                    <input type="radio" value="USD" name="pay_unit" checked=""><a href="#">USD</a>
                                  </li>
                                  <li>
                                    <input type="radio" value="GBP" name="pay_unit"><a href="#">GBP</a>
                                  </li>
                                </ul>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Slider</label>
                      <div class="col-sm-10">
                        <input class="slider slider-horizontal form-control" type="text" value="" data-slider-min="5" data-slider-max="20" data-slider-step="1" data-slider-value="10" data-slider-orientation="horizontal" >
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Vertical slider</label>
                      <div class="col-sm-10">
                        <input class="slider slider-vertical form-control" type="text" value="" data-slider-min="5" data-slider-max="20" data-slider-step="1" data-slider-value="10" data-slider-orientation="vertical">
                        <input class="slider slider-vertical form-control" type="text" value="" data-slider-min="5" data-slider-max="20" data-slider-step="1" data-slider-value="15" data-slider-orientation="vertical">
                        <input class="slider slider-vertical form-control" type="text" value="" data-slider-min="5" data-slider-max="20" data-slider-step="1" data-slider-value="10" data-slider-orientation="vertical">
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Range selector</label>
                      <div class="col-sm-10">
                        <input type="text" class="slider form-control" value="" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[250,750]" id="sl2" >
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Switch</label>
                      <div class="col-sm-10">
                        <label class="switch">
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Chosen</label>
                      <div class="col-sm-10">
                        <select style="width:260px" class="chosen-select">
                            <optgroup label="Alaskan/Hawaiian Time Zone">
                                <option value="AK">Alaska</option>
                                <option value="HI">Hawaii</option>
                            </optgroup>
                            <optgroup label="Pacific Time Zone">
                                <option value="CA">California</option>
                                <option value="NV">Nevada</option>
                                <option value="OR">Oregon</option>
                                <option value="WA">Washington</option>
                            </optgroup>
                            <optgroup label="Mountain Time Zone">
                                <option value="AZ">Arizona</option>
                                <option value="CO">Colorado</option>
                                <option value="ID">Idaho</option>
                                <option value="MT">Montana</option><option value="NE">Nebraska</option>
                                <option value="NM">New Mexico</option>
                                <option value="ND">North Dakota</option>
                                <option value="UT">Utah</option>
                                <option value="WY">Wyoming</option>
                            </optgroup>
                            <optgroup label="Central Time Zone">
                                <option value="AL">Alabama</option>
                                <option value="AR">Arkansas</option>
                                <option value="IL">Illinois</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="OK">Oklahoma</option>
                                <option value="SD">South Dakota</option>
                                <option value="TX">Texas</option>
                                <option value="TN">Tennessee</option>
                                <option value="WI">Wisconsin</option>
                            </optgroup>
                            <optgroup label="Eastern Time Zone">
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="IN">Indiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="NH">New Hampshire</option><option value="NJ">New Jersey</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="OH">Ohio</option>
                                <option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option>
                                <option value="VT">Vermont</option><option value="VA">Virginia</option>
                                <option value="WV">West Virginia</option>
                            </optgroup>
                        </select>
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Chosen multiple</label>
                      <div class="col-sm-10">
                        <select style="width:260px" multiple class="chosen-select">
                          <option value="AK">Alaska</option>
                          <option value="HI">Hawaii</option>
                          <option value="CA">California</option>
                          <option value="NV">Nevada</option>
                          <option value="OR">Oregon</option>
                          <option value="WA">Washington</option>
                        </select>
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Datepicker</label>
                      <div class="col-sm-10">
                        <input class="input-sm input-s datepicker-input form-control" size="16" type="text" value="12-02-2013" data-date-format="dd-mm-yyyy" >
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">File input</label>
                      <div class="col-sm-10">
                        <input type="file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline v-middle input-s">
                      </div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Markdown</label>
                      <div id="epiceditor" class="col-lg-10"></div>
                    </div>
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Wysiwyg</label>
                      <div class="col-sm-10">
                        <div class="btn-toolbar m-b-sm btn-editor" data-role="editor-toolbar" data-target="#editor">
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                              <ul class="dropdown-menu">
                              </ul>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                              <ul class="dropdown-menu">
                              <li><a data-edit="fontSize 5" style="font-size:24px">Huge</a></li>
                              <li><a data-edit="fontSize 3" style="font-size:18px">Normal</a></li>
                              <li><a data-edit="fontSize 1" style="font-size:14px">Small</a></li>
                              </ul>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                            <div class="dropdown-menu">
                              <div class="input-group m-l-xs m-r-xs">
                                <input class="form-control input-sm" placeholder="URL" type="text" data-edit="createLink"/>
                                <div class="input-group-btn">
                                  <button class="btn btn-default btn-sm" type="button">Add</button>
                                </div>
                              </div>
                            </div>
                            <a class="btn btn-default btn-sm" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                          </div>
                          
                          <div class="btn-group hide">
                            <a class="btn btn-default btn-sm" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                            <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                          </div>
                        </div>
                        <div id="editor" class="form-control" style="overflow:scroll;height:150px;max-height:150px">
                          Go ahead&hellip;
                        </div>
                      </div>
                    </div>

                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Drag and Drop</label>
                      <div class="col-sm-10">
                        <div class="dropfile visible-lg">
                          <small>Drag and Drop file here</small>
                        </div>
                      </div>
                    </div>
                    
                    <div class="line line-dashed b-b line-lg pull-in"></div>
                    <div class="form-group">
                      <div class="col-sm-4 col-sm-offset-2">
                        <button type="submit" class="btn btn-default">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                      </div>
                    </div>
                  </form>
                </div>
              </section>
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
    <div class="modal fade" id="modal-form">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body wrapper-lg">
          <div class="row">
            <div class="col-sm-6 b-r">
              <h3 class="m-t-none m-b">Sign in</h3>
              <p>Sign in to meet your friends.</p>
              <form role="form">
                <div class="form-group">
                  <label>Email</label>
                  <input type="email" class="form-control" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" class="form-control" placeholder="Password">
                </div>
                <div class="checkbox m-t-lg">
                  <button type="submit" class="btn btn-sm btn-success pull-right text-uc m-t-n-xs"><strong>Log in</strong></button>
                  <label>
                    <input type="checkbox"> Remember me
                  </label>
                </div>                
              </form>
            </div>
            <div class="col-sm-6">
              <h4>Not a member?</h4>
              <p>You can create an account <a href="#" class="text-info">here</a></p>
              <p>OR</p>
              <a href="#" class="btn btn-primary btn-block m-b-sm"><i class="fa fa-facebook pull-left"></i>Sign in with Facebook</a>
              <a href="#" class="btn btn-info btn-block m-b-sm"><i class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
              <a href="#" class="btn btn-danger btn-block"><i class="fa fa-google-plus pull-left"></i>Sign in with Google+</a>
            </div>
          </div>          
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  <!-- datepicker -->
  <script src="${pageContext.request.contextPath }/js/datepicker/bootstrap-datepicker.js"></script>
  <!-- slider -->
  <script src="${pageContext.request.contextPath }/js/slider/bootstrap-slider.js"></script>
  <!-- file input -->  
  <script src="${pageContext.request.contextPath }/js/file-input/bootstrap-filestyle.min.js"></script>
  <!-- wysiwyg -->
  <script src="${pageContext.request.contextPath }/js/wysiwyg/jquery.hotkeys.js"></script>
  <script src="${pageContext.request.contextPath }/js/wysiwyg/bootstrap-wysiwyg.js"></script>
  <script src="${pageContext.request.contextPath }/js/wysiwyg/demo.js"></script>
  <!-- markdown -->
  <script src="${pageContext.request.contextPath }/js/markdown/epiceditor.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/markdown/demo.js"></script>

  <script src="${pageContext.request.contextPath }/js/chosen/chosen.jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/app.plugin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/demo.js"></script>

</body>
</html>
