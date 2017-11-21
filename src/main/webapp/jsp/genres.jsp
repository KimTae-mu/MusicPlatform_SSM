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
      <div class="navbar-header aside bg-info dk nav-xs">
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
        <aside class="bg-dark dk nav-xs aside hidden-print" id="nav">          
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
                        <i class="icon-disc icon  "></i>
                        <span class="font-bold">What's new</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/genres.jsp">
                        <i class="icon-music-tone-alt icon  "></i>
                        <span class="font-bold">Genres</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/events.jsp">
                        <i class="icon-drawer icon  "></i>
                        <b class="badge bg-primary pull-right">6</b>
                        <span class="font-bold">Events</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/listen.jsp">
                        <i class="icon-list icon   "></i>
                        <span class="font-bold">Listen</span>
                      </a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/jsp/video.jsp" data-target="#content" data-el="#bjax-el" data-replace="true">
                        <i class="icon-social-youtube icon   "></i>
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
            <section class="w-f-md" id="bjax-target">
              <section class="hbox stretch">
                <!-- side content -->
                <aside class="aside bg-light dk" id="sidebar">
                  <section class="vbox animated fadeInUp">
                    <section class="scrollable hover">
                      <div class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          All
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item active">
                          acoustic
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          ambient
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          blues
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          classical
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          country
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          electronic
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          emo
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          folk
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          hardcore
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          hip hop
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          indie
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          jazz
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          latin
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          metal
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          pop
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          pop punk
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          punk
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          reggae
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          rnb
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          rock
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          soul
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/genres.jsp" class="list-group-item">
                          world
                        </a>
                      </div>
                    </section>
                  </section>
                </aside>
                <!-- / side content -->
                <section>
                  <section class="vbox">
                    <section class="scrollable padder-lg">
                      <h2 class="font-thin m-b">Acoustic</h2>
                      <div class="row row-sm">
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="${pageContext.request.contextPath }/jsp/track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m1.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Tempered Song</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Miaow</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m2.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Morbi id neque quam</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Phasellus</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/a10.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Malesuada</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m4.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Citudin venenatis ipsum ac</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Volutpat</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m5.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Vestibulum ullamcorper sodales nisi</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Mauris Qiaos</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m6.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Mauris convallis mauris at</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Neque</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m0.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Sodales nisi nec condimentum</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Augue</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m8.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Nisi nec condimentum</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Miaow</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m9.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Phasellus at ultricies nequ</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Volutpat</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m10.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Quis malesuada augue</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Feugiat</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m11.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Ipsum ac feugiat</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Quam AC</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m12.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Ullamcorper sodales nisi nec condimentu</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Convallis</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m13.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Tudin venenatis ulum ullamcorper</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Pellent Esque</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m14.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Sodales nisi nec condimentum</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Utricies</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m15.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Sec condimentum augue</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Quis Fox</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/a9.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Dimentum at pellentesque volutpat</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Suada</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m16.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Natis ipsum ac feugiat</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Monvallis</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.jsp"><img src="${pageContext.request.contextPath }/images/m17.jpg" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Dimentum tesque volut icies neque</a>
                              <a href="track-detail.jsp" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Londi Mentum</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <ul class="pagination pagination">
                        <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                      </ul>
                    </section>                    
                  </section>
                </section>
              </section>
            </section>
            <footer class="footer bg-info dker">
              <div id="jp_container_N">
                    <div class="jp-type-playlist">
                      <div id="jplayer_N" class="jp-jplayer hide"></div>
                      <div class="jp-gui">
                        <div class="jp-video-play hide">
                          <a class="jp-video-play-icon">play</a>
                        </div>
                        <div class="jp-interface">
                          <div class="jp-controls">
                            <div><a class="jp-previous"><i class="icon-control-rewind i-lg"></i></a></div>
                            <div>
                              <a class="jp-play"><i class="icon-control-play i-2x"></i></a>
                              <a class="jp-pause hid"><i class="icon-control-pause i-2x"></i></a>
                            </div>
                            <div><a class="jp-next"><i class="icon-control-forward i-lg"></i></a></div>
                            <div class="hide"><a class="jp-stop"><i class="fa fa-stop"></i></a></div>
                            <div><a class="" data-toggle="dropdown" data-target="#playlist"><i class="icon-list"></i></a></div>
                            <div class="jp-progress hidden-xs">
                              <div class="jp-seek-bar dk">
                                <div class="jp-play-bar bg-info">
                                </div>
                                <div class="jp-title text-lt">
                                  <ul>
                                    <li></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                            <div class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
                            <div class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
                            <div class="hidden-xs hidden-sm">
                              <a class="jp-mute" title="mute"><i class="icon-volume-2"></i></a>
                              <a class="jp-unmute hid" title="unmute"><i class="icon-volume-off"></i></a>
                            </div>
                            <div class="hidden-xs hidden-sm jp-volume">
                              <div class="jp-volume-bar dk">
                                <div class="jp-volume-bar-value lter"></div>
                              </div>
                            </div>
                            <div>
                              <a class="jp-shuffle" title="shuffle"><i class="icon-shuffle text-muted"></i></a>
                              <a class="jp-shuffle-off hid" title="shuffle off"><i class="icon-shuffle text-lt"></i></a>
                            </div>
                            <div>
                              <a class="jp-repeat" title="repeat"><i class="icon-loop text-muted"></i></a>
                              <a class="jp-repeat-off hid" title="repeat off"><i class="icon-loop text-lt"></i></a>
                            </div>
                            <div class="hide">
                              <a class="jp-full-screen" title="full screen"><i class="fa fa-expand"></i></a>
                              <a class="jp-restore-screen" title="restore screen"><i class="fa fa-compress text-lt"></i></a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="jp-playlist dropup" id="playlist">
                        <ul class="dropdown-menu aside-xl dker">
                          <!-- The method Playlist.displayPlaylist() uses this unordered list -->
                          <li class="list-group-item"></li>
                        </ul>
                      </div>
                      <div class="jp-no-solution hide">
                        <span>Update Required</span>
                        To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                      </div>
                    </div>
                  </div>
            </footer>
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
