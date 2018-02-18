<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?php echo base_url('/assets/images/upi.png'); ?>">

    <title>Question Generation System</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url('/assets/css/bootstrap.min.css'); ?>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?php echo base_url('/assets/css/sass/main.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('/assets/css/animate.css'); ?>" rel="stylesheet">

  <body>
  <div class="app-header">
    <a href="<?php echo base_url(); ?>" class="home-title animated slideInDown">TOEFL Error Identification Generator</a>
    <!-- <div class="home-title animated slideInDown">Assets Management Information System</div> -->
  </div>
  <div class="app-body">
    <a class="welcome-area left cf animated slideInLeft" href="<?php echo site_url('Home/viewLearn'); ?>">
        <span class="learn-more">What is this?</span>
        <img src="<?php echo base_url(); ?>/assets/images//dashboard.png">
    </a>
    <div class="login-container animated slideInRight">
        <?php echo form_open('Admin/loginProcess',['class' => 'login-form']) ?>
        <div class="title">Sign In to TOEFL Generator</div>
        <div class="form-login">
            <div class="username-field">
                <div class="label">Username</div>
                <input type="text" placeholder="Your username" name="user">
            </div>
            <div class="pass-field">
                <div class="label">Password</div>
                <input type="password" placeholder="Password at least 6 characters" name="pwd">
            </div>
            <input type="submit" value="Sign In »" class="btn-login">
        </div>
        <div class="login-footer">
          <div class="footer-area"></div>
        </div>
          <!-- <a href="#" class="forgot">Forgot your password? Contact us!</a> -->
    </div>
  </div>
  <div class="footer"></div>
  <!-- Bootstrap core JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="<?php echo base_url('/assets/js/jquery-1.12.0.min.js'); ?>"></script>
  <script src="<?php echo base_url('/assets/js/bootstrap.min.js'); ?>"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

</body></html>