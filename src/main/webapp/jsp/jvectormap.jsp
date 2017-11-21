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
   <link rel="stylesheet" href="${pageContext.request.contextPath }/js/jvectormap/jquery-jvectormap-1.2.2.css" type="text/css" />
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
                    <li  class="active">
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
                        <li  class="active">
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
            <section class="scrollable wrapper">
              <div class="panel b-a">
                <div class="panel-heading b-b">World Map</div>
                <div class="panel-body">
                  <div class="h3 m-b font-thin">World Map with information</div>
                  <p class="m-b-lg text-muted">This map is based on data available at <a href="http://www.naturalearthdata.com/downloads/110m-cultural-vectors/110m-admin-0-countries/">http://www.naturalearthdata.com</a>. Data is in <a href="http://www.naturalearthdata.com/about/terms-of-use/">public domain</a>.</p>
                  <div class="row">
                    <div class="col-sm-8">                      
                      <div id="world_map" style="height:240px;">                        

                      </div>
                      <div class="m-t-xl m-b clearfix">
                        <i class="i i-local i-2x text-info pull-left m-r m-l m-t-xs"></i>
                        <div class="clear text-sm">
                          Countries distinguish between metropolitan (homeland) and independent and semi-independent portions of sovereign states.
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="h4 m-b font-thin">Statistics</div>
                      <p class="m-b-xs">Population growth</p>
                      <div class="progress progress-xs">
                        <div class="progress-bar bg-primary" data-toggle="tooltip" data-original-title="80%" style="width: 80%"></div>
                      </div>
                      <p class="m-b-xs">Desertification</p>
                      <div class="progress progress-xs">
                        <div class="progress-bar bg-success" data-toggle="tooltip" data-original-title="60%" style="width: 60%"></div>
                      </div>
                      <p class="m-b-xs">Natural Disasters</p>
                      <div class="progress progress-xs">
                        <div class="progress-bar bg-warning" data-toggle="tooltip" data-original-title="70%" style="width: 70%"></div>
                      </div>
                      <p class="m-b-xs">World Forest</p>
                      <div class="progress progress-xs">
                        <div class="progress-bar bg-dark lter" data-toggle="tooltip" data-original-title="50%" style="width: 50%"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel b-a">
                <div class="panel-heading b-b">USA Map</div>
                <div class="panel-body">
                  <div class="h3 m-b font-thin">Map with selection</div>
                  <p class="m-b-lg text-muted">This map is based on data available at <a href="http://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-1-states-provinces/">http://www.naturalearthdata.com</a>. Data is in <a href="http://www.naturalearthdata.com/about/terms-of-use/">public domain</a>.</p>
                  <div class="row m-b-xl">
                    <div class="col-sm-8">                      
                      <div id="usa_map" style="height:240px;">                        

                      </div>                      
                    </div>
                    <div class="col-sm-4">
                      <div class="h4 m-b font-thin">Statistics</div>
                      <p>Internal administrative boundaries</p>
                      <div>
                        <div class="inline text-center">
                          <div class="easypiechart" data-percent="60" data-bar-color="#fcc633" data-line-width="4" data-loop="false" data-scale-color="#fff" data-rotate="0" data-size="100">
                            <div>
                              <span class="step">60</span>%
                            </div>
                          </div>
                          <p class="text-warning font-bold">data</p>
                        </div>
                        <div class="inline text-center">
                          <div class="easypiechart" data-percent="35" data-bar-color="#177bbb" data-line-width="4" data-loop="false" data-scale-color="#fff" data-rotate="0" data-size="100">
                            <div>
                              <span class="step">35</span>%
                            </div>
                          </div>
                          <p class="text-primary font-bold">info</p>
                        </div> 
                      </div>
                    </div>
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
    <script src="${pageContext.request.contextPath }/js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
  <script src="${pageContext.request.contextPath }/js/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <script src="${pageContext.request.contextPath }/js/jvectormap/jquery-jvectormap-us-aea-en.js"></script>
  <script src="${pageContext.request.contextPath }/js/jvectormap/demo.js"></script>
  <script src="${pageContext.request.contextPath }/js/app.plugin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/demo.js"></script>

</body>
</html>
