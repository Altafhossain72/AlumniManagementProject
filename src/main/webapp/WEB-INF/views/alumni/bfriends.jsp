<%-- 
    Document   : sprofile
    Created on : Dec 21, 2018, 3:21:23 PM
    Author     : aktar
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
       <script src="resources/js/angular.js"></script>
        <script>
            var blo = ${blogpostobject};
            var blogandcoment = ${allblogandcommentlist};
            var chatlist = ${userprofileobject};
            var blogpicture =${bpicture};
            var friends =${bfriend};
            console.log(blo);
            angular.module('myapp', []).controller('BlogpostController',
                    function ($scope) {
                        $scope.Blogpost = blo;
                        $scope.boancom = blogandcoment;
                        $scope.clo = chatlist;
                        $scope.pictuer = blogpicture;
                        $scope.frindlist = friends;
                    });
        </script>

        <style>
            .responsiveblogimg {
                width: 100%;
                max-height: 200px;
                height: auto;
            }
        </style>


    </head>
    <body class="animated fadeIn" ng-app="myapp"
          ng-controller="BlogpostController">
        <jsp:include page="header.jsp" />
        
        <div class="col-lg-12 center">

            <nav class="navbar navbar-default navbar-fixed-top navbar-principal">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="http://demos.bootdey.com/dayzone/index.html"> <img src="resources/logo/alumni-logo.jpg" class="img-logo"> <b>Alumni</b> </a>
                </div>
                <div id="navbar" class="collapse navbar-collapse nav_menu">
                    <div class="col-md-5 col-sm-4">
                        <form class="navbar-form" method="get" action="/search">
                            <div class="form-group" style="display:inline;">
                                <div class="input-group" style="display:table;">
                                    <input class="form-control" id ="txt" name="searchString" placeholder="Search..." autocomplete="on" type="text"> <span class="input-group-addon" style="width:1%;"> <button id="button-id" type="submit"><span class="glyphicon glyphicon-search"></span></button> </span>
                                </div>
                            </div>
                            <div>
                                    ${player.superTeam}
       </div>
                        </form>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="http://localhost:8080/alumni/timelineal">${profileobject1.firstname} ${profileobject1.lastname}<img src="resources/profileimage/${UserId}.jpg" class="img-nav"></a></li>
                        <li><a href="homepagealumni"><i class="fa fa-home"></i>&nbsp;   </a></li>
                        <li><a href="showalljobcircularal"><i class="fa fa-briefcase"></i></a></li>
                        <li><a href="showallevental"><i class="fa fa-calendar"></i></a></li>


                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                                <span class=" glyphicon glyphicon-triangle-bottom"></span>
                            </a>
                            <ul class="dropdown-menu  pull-right">
                                <li><a href="jobcircularal"> Add job Circular</a></li>
                                <li><a href="allalamnievent"> Add Event</a></li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


            <div class="container" style="margin-top:0px;">
                <div class="row">
                    <div class="col-md-11 no-paddin-xs">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="cover-photo" style="background-image:url(resources/profileimage/sk.jpg)">
                                <h2 class="cover-name right">Aktarul Ahsan</h2>
                                <img src="resources/profileimage/${UserId}.jpg" alt="pic" class="profile-photo img-thumbnail show-in-modal">
                                <div class="row">
                                    <div class="col-sm-10"></div>
                                    <div class="col-sm-2 right">

<!--                                        <form:form name="addblog"
                                                   modelAttribute="addblogobject1" action="addpostinatimelinewpic" enctype="multipart/form-data"
                                                   method="post">
                                            <a href="#"><i class="fa">
                                                    <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                                class="fa fa-camera"  path="" ></form:input>

                                                </i></a>
                                        </form:form>-->
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel-options">
                                <div class="navbar navbar-default navbar-cover">
                                    <div class="container-fluid">
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#profile-opts-navbar">  <span class="icon-bar"></span> </button>
                                        </div>
                                        <div class="collapse navbar-collapse" id="profile-opts-navbar">
                                            <ul class="nav navbar-nav navbar-right">
                                                <li class="active"><a href="timelineal"><i class="fa fa-tasks"></i>Timeline</a></li>
                                                <li><a href="http://localhost:8080/alumni/aboutalumniprofile"><i class="fa fa-info-circle"></i>About Alumni</a></li>
                                                <li><a href="batchf"><i class="fa fa-users"></i>Friends</a></li>
                                                <li><a href="showalumnipic"><i class="fa fa-file-image-o"></i>Photos</a></li>
                                                <li><a href="http://demos.bootdey.com/dayzone/messages.html"><i class="fa fa-comment"></i>Messages</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-11 no-paddin-xs"> 
          <div class="col-md-12">
            <!-- panel photos -->
            <div class="panel panel-default panel-list-photos">
              <div class="panel-heading">
                <h3 class="panel-title">Photos</h3>
              </div>
              <div class="panel-body">
                  
                  <div class="col-md-4" ng-repeat="bf in frindlist | limitTo:8">
                  <div class="g-hover-card" >
                    <img src="Day-Zone%20friends_files/1.jpg" alt="">
                    <div class="user-avatar">
                      <img src="resources/profileimage/{{bf.emailid}}.jpg" alt="">
                    </div>
                    <div class="info">
                      <div class="title">
                          {{bf.firstname}}
                        <a href="http://demos.bootdey.com/dayzone/profile.html"></a>
                      </div>
                    </div>
                    <div class="bottom">
                      <a href="#" class="btn btn-info btn-xs">
                        <i class="fa fa-user-plus"></i>
                      </a>
                      <a href="#" class="btn btn-primary btn-xs">
                        <i class="fa fa-envelope"></i>
                      </a>
                      <a href="#" class="btn btn-success btn-xs">
                        <i class="fa fa-plus"></i>
                      </a>
                    </div>
                  </div>
                </div>

                
                <div class="col-md-12  post-load-more  text-center">
                  <button class="btn btn-default">
                    <i class="fa fa-refresh"></i>Load More...
                  </button>
                </div>                
              </div>
            </div><!-- end panel photos -->
          </div>
        </div>
                    
                </div>
                
                
                
                
                
                
                
                
                

            </div>





<br/><br/><br/><br/><br/><br/>
        </div>
                                    <div>
                                        <jsp:include page="../footer.jsp" />
                                    </div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script>
                                                    $(document).ready(function () {
                                                        var date_input = $('input[name="reglastdate"]'); //our date input has the name "date"
                                                        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                        date_input.datepicker({
                                                            format: 'yyyy/MM/dd',
                                                            container: container,
                                                            todayHighlight: true,
                                                            autoclose: true,
                                                        })
                                                    })
        </script>
                                    
                                    

    </body>
</html>
