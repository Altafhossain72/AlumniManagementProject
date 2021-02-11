<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="resources/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="resources/dashboardcss/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="resources/dashboardcss/css/jquery-jvectormap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dashboardcss/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="resources/dashboardcss/css/_all-skins.min.css">

  
  
  <script src="resources/js/angular.js"></script>
        <script>
            var edu =${educationlist};
            var eventlist =${allevents};

            

            console.log(edu);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.education = edu;
                $scope.eventlists = eventlist;
            

            });
        </script>
  
</head>
<body class="hold-transition skin-blue sidebar-mini" ng-app="myapp"
          ng-controller="BlogpostController">
    <jsp:include page="header.jsp" />
    
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <link rel="icon" href="resources/logo/alumni-logo.jpg">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>Alumni</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success"></span>
            </a>
            <ul class="dropdown-menu">
                
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning"></span>
            </a>
            <ul class="dropdown-menu">
                
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger"> </span>
            </a>
            <ul class="dropdown-menu">
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
              <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="resources/profileimage/${UserId}.jpg" class="img-sm"  alt=" ">${ownpf.firstname} ${ownpf.lastname}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="resources/profileimage/${UserId}.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${profileobject1.firstname} ${profileobject1.lastname}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                  <i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">
        <a href="admindashboard"><i class="fa fa-circle-o"></i> Dashboardsss ss</a>
        </li>
        <li class="header">
        <a href="alluser"><i class="fa fa-user"></i> All User</a>
        </li>
        <li class="header">
        <a href="allpost"><i class="fa fa-user"></i> All post</a>
        </li>
        <li class="header">
        <a href="addadminpost"><i class="fa fa-user"></i> Add post</a>
        </li>
        <li class="header">
        <a href="alljobcircular"><i class="fa fa-briefcase"></i> All Job Circular</a>
        </li>
        <li class="header">
        <a href="addjobcircularadminpage"><i class="fa fa-briefcase"></i> Add Job Circular</a>
        </li>
        <li class="header">
        <a href="showalleventsss"><i class="fa fa-calendar"></i> All Event</a>
        </li>
        <li class="header">
        <a href="addeditusereventadmin"><i class="fa fa-calendar"></i> Add Event</a>
        </li>
        
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
<!--All user --><!--All user --><!--All user --><!--All user --><!--All user --><!--All user --><!--All user --><!--All user -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
     <div class="row">
         <div class="col-md-2">
             
         </div>           
         
         <div class="col-md-6">
          <div class="formcontainer" text="">

                                    <div>
                                        <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" >
                                            <tbody>
                                                <tr>
                                                    <td width="73%" height="" align="left" valign="bottom" class="BDJApplicantsName">
                                                        <!--Applicant's Name:-->
                                                        <h1><u> ${jobcicular.title}</u></h1><a href="reportjobcircular?getpid=${jobcicular.jobid}" class="glyphicon glyphicon-print pull-right"></a>

                                                    </td>


                                                </tr>

                                                <tr>
                                                    <td class="BDJNormalText04" align="left" valign="middle">
                                                        <!--Contact Address:-->

                                                        <h4>Address: ${jobcicular.companynames}</h4>
                                                        <!--Home Phone:-->
                                                       
                                                        <br>
                                                        <h5><u>Vacancy :</u></h5> 
                                                        <!--Office Phone:-->
                                                        ${jobcicular.vacancy}


                                                        <br>
                                                        <h5><u>Job Responsibilities :</u></h5>${jobcicular.responsibility}
                                                        <!--Mobile:-->

                                                        <br>
                                                        <h5><u>Job Description :</u></h5>
                                                                ${jobcicular.jobdescription}
                                                        <br>
                                                        <h5><u>Job Nature :</u></h5>
                                                                ${jobcicular.jobnature}
                                                        <br>
                                                        <h5><u>Job Level :</u></h5>
                                                                ${jobcicular.joblevel}
                                                        <br>
                                                        <h5><u>Education Qualification :</u></h5>
                                                                ${jobcicular.eduqualification}
                                                        <br>
                                                        <h5><u>Experience :</u></h5>
                                                                ${jobcicular.experience}
                                                        <br>
                                                        <h5><u>Location :</u></h5>
                                                                ${jobcicular.location}
                                                        <h5><u>Salary :</u></h5>
                                                                ${jobcicular.salary}
                                                        <h5><u>Other Benefits :</u></h5>
                                                                ${jobcicular.otherbenefits}
                                                        <h5><u>Age Limit :</u></h5>
                                                                ${jobcicular.agelimit}

                                                        <h5><u>Apply Last Date:</u></h5>
                                                                ${jobcicular.applylastdate}
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="editalumnijobcirculaadmin?getpid=${jobcicular.jobid}"><button  id="editjob"
                                                                                                                  type="submit" class="btn">edit</button></a>
                                                        
                                                <a href="removejobcircularadmin/${jobcicular.jobid}"><button  id="removebuttons" type="button" class="btn">Remove</button></a>
                                                        
                                                        
                                                    </td>
                                                </tr>

                                            </tbody>

                                        </table>
                                    </div>

                                    <div class="span12 centered-text centered-text text-center">Read Before Apply</div>
                                    <div>Candidates are requested to read the requirements carefully before submitting the application.
                                        *Photograph must be enclosed with the resume.</div><br/><br/><br/>


                                    

                                    
                                </div>

          <!-- /.box -->
        </div>
         
         
         






                </div>
 
      
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
    </div>
    <strong> Copyrights and copy 2019 Alumni | Created By Md Aktarul Ahsan  | All Rights Reserved <br></strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
            <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="joindate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/MM/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
            </script>



















<!-- jQuery 3 -->
<script src="resources/dashboardcss/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="resources/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="resources/dashboardcss/js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="resources/dashboardcss/js/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="resources/dashboardcss/js/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="resources/dashboardcss/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="resources/dashboardcss/js/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll -->
<script src="resources/dashboardcss/js/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="resources/dashboardcss/js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="resources/dashboardcss/js/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dashboardcss/js/demo.js"></script>
</body>
</html>
