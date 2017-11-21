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
                        <li  class="active">
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
                <div class="row">
                  <div class="col-sm-6">
                    <h3 class="m-b-none">Charts</h3>
                    <small>Statistics & graph information</small>
                  </div>
                  <div class="col-sm-6">
                    <div class="text-right text-left-xs">
                      <div class="sparkline m-l m-r-lg pull-right" data-type="bar" data-height="35" data-bar-width="6" data-bar-spacing="2" data-bar-color="#fff">5,8,9,12,8,10,8,9,7,8,6</div>
                      <div class="m-t-md">
                        <span class="text-uc">New users</span>
                        <div class="h4 m-n"><strong>1,120,100</strong></div>
                      </div>                      
                    </div>
                  </div>
                </div>
              </div>
              <section class="panel panel-default">
                <header class="panel-heading font-bold">Site statistics</header>
                <div class="panel-body">
                  <div id="flot-1ine" style="height:250px"></div>
                </div>
                <footer class="panel-footer bg-white">
                  <div class="row text-center no-gutter">
                    <div class="col-xs-3 b-r b-light">
                      <p class="h3 font-bold m-t">5,860</p>
                      <p class="text-muted">Orders</p>
                    </div>
                    <div class="col-xs-3 b-r b-light">
                      <p class="h3 font-bold m-t">10,450</p>
                      <p class="text-muted">Sellings</p>
                    </div>
                    <div class="col-xs-3 b-r b-light">
                      <p class="h3 font-bold m-t">21,230</p>
                      <p class="text-muted">Items</p>
                    </div>
                    <div class="col-xs-3">
                      <p class="h3 font-bold m-t">7,230</p>
                      <p class="text-muted">Customers</p>                        
                    </div>
                  </div>
                </footer>
              </section>
              <div class="row">
                <div class="col-md-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Multiple</header>
                    <div class="panel-body">
                      <div id="flot-chart"  style="height:240px"></div>
                    </div>                  
                  </section>
                </div>
                <div class="col-md-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Real-time update</header>
                    <div class="panel-body">
                      <div id="flot-live"  style="height:240px"></div>
                    </div>
                  </section>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Vertical bar</header>
                    <div class="panel-body">
                      <div id="flot-bar"  style="height:240px"></div>
                    </div>                  
                  </section>
                </div>
                <div class="col-md-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Horizontal bar</header>
                    <div class="panel-body">
                      <div id="flot-bar-h"  style="height:240px"></div>
                    </div>
                  </section>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Pie Chart</header>
                    <div class="panel-body">
                      <div id="flot-pie"  style="height:240px"></div>
                    </div>                  
                  </section>
                </div>
                <div class="col-md-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Donut pie</header>
                    <div class="panel-body">
                      <div id="flot-pie-donut"  style="height:240px"></div>
                    </div>
                  </section>
                </div>
              </div>
              
              <div class="row">
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <header class="panel-heading">Pie</header>
                    <div class="panel-body text-center">              
                      <div class="sparkline inline" data-type="pie" data-height="154" data-slice-colors="['#1ccacc','#f2f2f2']">60,40</div>
                      <div class="line pull-in"></div>
                      <div class="text-xs">
                        <i class="fa fa-circle text-info"></i> 60%
                        <i class="fa fa-circle text-muted"></i> 40%
                      </div>
                    </div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Data graph</header>
                    <div class="bg-light dk wrapper">
                      <span class="pull-right">Friday</span>
                      <span class="h4">$540</span>
                      <div class="text-center m-b-n m-t-sm">
                          <div class="sparkline" data-type="line" data-height="65" data-width="100%" data-line-width="2" data-line-color="#dddddd" data-spot-color="#bbbbbb" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="3" data-resize="true">280,320,220,385,450,320,345,250,250,250,400,380</div>
                          <div class="sparkline inline" data-type="bar" data-height="45" data-bar-width="6" data-bar-spacing="6" data-bar-color="#1ccc88">10,9,11,10,11,10,12,10,9,10,11,9,8</div>
                      </div>
                    </div>
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-xs-4">
                          <small class="text-muted block">Market</small>
                          <span>$1500.00</span>
                        </div>
                        <div class="col-xs-4">
                          <small class="text-muted block">Referal</small>
                          <span>$600.00</span>
                        </div>
                        <div class="col-xs-4">
                          <small class="text-muted block">Affiliate</small>
                          <span>$400.00</span>
                        </div>
                      </div>
                    </div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <header class="panel-heading">Stacked</header>
                    <div class="panel-body text-center">
                      <div class="sparkline inline" data-type="bar" data-height="193" data-bar-width="12" data-bar-spacing="10" data-stacked-bar-color="['#c9d0d7', '#eee']">5:5,8:4,12:5,10:6,11:7,12:2,8:6,9:3,5:5,4:9</div>
                    </div>
                  </section>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <header class="panel-heading">
                      Conversion
                    </header>
                    <div class="panel-body text-center">
                      <h4>62.5<small> hrs</small></h4>
                      <small class="text-muted block">Updated at 2 minutes ago</small>
                      <div class="inline">
                        <div class="easypiechart" data-percent="75" data-bar-color="#fcc633" data-line-width="16" data-loop="false" data-size="188">
                          <div>
                            <span class="h2 m-l-sm step">75</span>%
                            <div class="text text-sm">new</div>
                          </div>
                        </div>
                      </div>                      
                    </div>
                    <div class="panel-footer"><small>% of avarage rate of the Conversion</small></div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <header class="panel-heading">
                      Bounce rate
                    </header>
                    <div class="panel-body text-center">
                      <h4><small>last </small>12<small> hrs</small></h4>
                      <small class="text-muted block">yesterday: 20%</small>
                      <div class="inline">
                        <div class="easypiechart" data-percent="25" data-line-width="6" data-loop="false" data-size="188">
                          <div>
                            <span class="h2 m-l-sm step">25</span>%
                            <div class="text text-sm">today</div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="panel-footer"><small>% of change</small></div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <header class="panel-heading">
                      New visitors
                    </header>
                    <div class="panel-body text-center">
                      <h4>3,450</h4>
                      <small class="text-muted block">Worldwide visitors</small>
                      <div class="inline">
                        <div class="easypiechart" data-percent="60" data-line-width="10" data-track-color="#eee" data-bar-color="#1ccc88" data-scale-color="#fff" data-size="188" data-line-cap='butt'>
                          <div>
                            <span class="h2 m-l-sm step">60</span>%
                            <div class="text text-sm">new visits</div>
                          </div>
                        </div>
                      </div>                      
                    </div>
                    <div class="panel-footer"><small>% of avarage rate of the visits</small></div>
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
    <!-- Sparkline Chart -->
  <script src="${pageContext.request.contextPath }/js/charts/sparkline/jquery.sparkline.min.js"></script>
  <!-- Easy Pie Chart -->
  <script src="${pageContext.request.contextPath }/js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
  <!-- Flot -->
  <script src="${pageContext.request.contextPath }/js/charts/flot/jquery.flot.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/charts/flot/jquery.flot.tooltip.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/charts/flot/jquery.flot.resize.js"></script>
  <script src="${pageContext.request.contextPath }/js/charts/flot/jquery.flot.orderBars.js"></script>
  <script src="${pageContext.request.contextPath }/js/charts/flot/jquery.flot.pie.min.js"></script>
  <script src="${pageContext.request.contextPath }/js/charts/flot/jquery.flot.grow.js"></script>
  <script src="${pageContext.request.contextPath }/js/charts/flot/demo.js"></script>
  <script src="${pageContext.request.contextPath }/js/app.plugin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jPlayer/demo.js"></script>

</body>
</html>
