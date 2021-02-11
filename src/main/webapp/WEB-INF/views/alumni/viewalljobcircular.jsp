<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>

        <script src="resources/js/angular.js"></script>
        <script>
            var circular =${jobcircular};
            var chat = ${userprofileobject};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;
                $scope.jobcircular = circular;
            });
        </script>
        <style>
            th {
                font-size: 13px;
            }
            td {
                font-size: 11px;
            }
            .norm-jobs-wrapper{
                background:#FBFBFB; border:1px solid #d5d5d5; cursor:pointer; padding:5px 18px 15px 10px; margin:5px 0px 5px 0px; border-radius:8px; color:#656565;
            }
            .norm-jobs-wrapper:hover{	
                background:#F5F5F5; cursor:pointer;
                -webkit-box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
                -moz-box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
                box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
            }
            .norm-jobs-wrapper .col-sm-push-3 {left: 75%;}
            .norm-jobs-wrapper .col-sm-pull-9 {right: 25%;}
            .norm-jobs-wrapper .col-sm-push-3 { left:0%;}
            .norm-jobs-wrapper .col-sm-pull-9 {right:0%;}

            .ellipsis {
                max-width: 500px;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
            }
        </style>
    </head>

    <body class="animated fadeIn" ng-app="myapp" ng-controller="BlogpostController">
            <jsp:include page="header.jsp" />

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


        <!-- Timeline content -->

        <div class="container" style="margin-top:50px;">
            <div class="row col-lg-10 no-paddin-xs">
                <img src="resources/logo/onlinejob.png" alt="you have no Image">
            </div>
            <div class="row">

                <div class="col-lg-11 no-paddin-xs">
                
                    <div class="profile-nav col-sm-3">

                        <div class="panel">

                            <div class="user-heading round">

                                <a href="#">

                                    <img src="resources/profileimage/${UserId}.jpg" alt="you have no Image">

                                </a>

                                <h1>${UserId}</h1>

                                <p>Bangladesh</p>

                            </div>



                            <ul class="nav nav-pills nav-stacked">

                                <li><a href="http://demos.bootdey.com/bookpost/profile.html"> <i class="fa fa-user"></i> Application List</a></li>

                                <li><a href="aboutalumniprofile"> <i class="fa fa-info-circle"></i> About</a></li>

                                <li><a href="batchf"> <i class="fa fa-users"></i> Friends</a></li>

                                <li><a href="showalumnipic"> <i class="fa fa-file-image-o"></i> Photos</a></li>

                                <li class="active"><a href="http://demos.bootdey.com/bookpost/edit_profile.html"> <i class="fa fa-edit"></i> Edit profile</a></li>

                            </ul>

                        </div>

                    </div>

                    <!--                                for using modal-->

                    <!--                    End Modal-->




                    <div class="profile-info col-sm-9 " >


                        <!-- update info -->
                        <div class=" animated fadeInDown delay-05s " id="panel-1">

                            <!-- end panel heading -->


                            <div  class="panel-body pull-left" ng-repeat="x in jobcircular">


                                <div class="col-md-12">
                                    <div class="norm-jobs-wrapper" >
                                        <div class="row">

                                            <div class="col-sm-3 col-sm-push-3">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="comp_logo"></div>
                                                    </div>
                                                </div>


                                            </div>
                                            <div class="col-sm-12 col-sm-pull-9 pull-right">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="job-title-text">
                                                            <a onclick="clickJObTitle()" target="_blank" href="http://localhost:8080/alumni/viewonejobcircularal?getpid={{x.jobid}}">
                                                                <u> {{x.title}}</u>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <div class="comp-name-text">
                                                            {{x.companynames}}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <div class="locon-text">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="locon-text-d">
                                                                        {{x.location}}</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="col-sm-12">
                                                        <div class="locon-text">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="ellipsis locon-text-d">
                                                                        {{x.jobdescription}}</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="col-sm-12">
                                                        <div class="edu-text">
                                                            <div class="edu-text-d" >

                                                                <ul>
                                                                    <li><h5>{{x.eduqualification}} </h5>  
                                                                    </li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="row">
                                                    <div class="col-sm-9">
                                                        <div class="exp-text">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="exp-text-d" maxlength="50">

                                                                        {{x.experience}}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <div class="dead-text">
                                                            <div class="dead-text-s">
                                                                <div class="dead-text-d">
                                                                    <strong>{{x.applylastdate}}</strong>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                </div>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            </div><!--End Timeline content -->



            <!-- Online users sidebar content-->

            <div class="chat-sidebar focus">

                <div class="list-group text-left">

                    <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p> 

                    <p class="text-center chat-title">Online users</p> 

                    <table >
                        <tr ng-repeat="chat in profile">

                            <td>
                                <ul class="list-inline">
                                    <a href="aboutfrind?getpid={{chat.emailid}}" class="list-group-item">

                                        <i class="fa fa-check-circle connected-status">

                                            <img src="resources/profileimage/{{chat.emailid}}.jpg" class="img-chat img-thumbnail" alt="Image">
                                            {{chat.firstname}} {{chat.lastname}}</i>

                                        <li></li>


                                    </a>
                                </ul>

                            </td>

                        </tr>
                    </table>

                </div>

            </div><!-- Online users sidebar content-->

            <!-- Footer -->
            <footer class="container-fluid text-center">

                <div class="container">

                    <p>

                    </p>   

                    Copyrights and copy 2018 Alumni | Created By Md Aktarul Ahsan  | All Rights Reserved <br>

                    <p></p>

                </div>

            </footer>
            <!-- Footer -->




            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
            <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="applylastdate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
            </script>


            <script>'undefined' === typeof _trfq || (window._trfq = []);
                            'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>


    </body>
</html>