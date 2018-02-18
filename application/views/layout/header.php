x<?php error_reporting(0); ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TOEFL Question Generation</title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url(); ?>vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <!-- <link href="<?php echo base_url(); ?>vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"> -->
    <!-- Custom Theme Style -->
    <link href="<?php echo base_url(); ?>assets/build/css/custom.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/main.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/sweetalert/sweetalert.css">
    <script src="<?php echo base_url(); ?>assets/css/sweetalert/sweetalert.min.js"></script>        

  </head>

  <body class="nav-sm">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="<?php echo site_url('/') ?>" class="site_title"><i class="fa fa-graduation-cap"></i> <span>TOEFL Generation</span></a>
            </div>

            <div class="clearfix"></div>
            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<?php echo base_url(); ?>assets/images/icon/<?php echo 'guru.jpg';?>" class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Administrator</span>
              </div>
            </div>
            <!-- /menu profile quick info -->
            <br />
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Menu</h3>
                <ul class="nav side-menu">  
                  <li><a href="<?php echo site_url('Question/allQuestion'); ?>"><i class="fa fa-question-circle-o"></i>Question Collection</a></li> 
                  <li><a href="<?php echo site_url('News/allNews'); ?>"><i class="fa fa-newspaper-o"></i>News</a></li> 
                  <li><a href="<?php echo site_url('QG/allCandidate'); ?>"><i class="fa fa-list"></i>Candidate</a></li> 
                  <li><a href="<?php echo site_url('QG/generate'); ?>"><i class="fa fa-check"></i>Generate Question</a></li> 
                </ul>
              </div>  
            </div>
            <!-- /sidebar menu -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<?php echo base_url(); ?>assets/images/icon/<?php if($_SESSION['kategori'] == 'siswa') echo 'siswa.jpg'; else echo 'guru.jpg';?>" alt="">Administrator
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="<?php echo site_url('siswa/changePass'); ?>">Ganti Password</a></li>
                    <li><a href="<?php echo site_url('home/logout'); ?>"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->