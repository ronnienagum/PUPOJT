<?php   
    $view = isset($_GET['view']) ? $_GET['view'] :"";  
	  $appl = New Applicants();
	  $applicant = $appl->single_applicant($_SESSION['APPLICANTID']); 
  ?> <style type="text/css">
  .panel-body img {
    width: 100%;
    height: 50%;
  }

  .panel-body img:hover {
    cursor: pointer;
  }
</style>
<section id="inner-headline">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2 class="pageTitle">Profile</h2>
      </div>
    </div>
  </div>
</section>
<div class="container" style="margin-top: 10px;min-height: 600px;">
  <div class="row">
    <div class="col-sm-3">
      <!--left col-->
      <div class="panel panel-default">
        <div class="panel-body">
          <div id="image-container">
            <!-- <img title="profile image"  data-target="#myModal"  data-toggle="modal"  src="<?php echo web_root.'applicant/'.$applicant->APPLICANTPHOTO; ?>">   -->
          </div>
        </div>
        <ul class="list-group">
          <li class="list-group-item text-muted">Profile</li>
          <!-- 
            <li class="list-group-item text-right"><span class="pull-left"><strong>Joined</strong></span> 2.13.2014</li><li class="list-group-item text-right"><span class="pull-left"><strong>Last seen</strong></span> Yesterday</li> -->
          <li class="list-group-item text-right">
            <span class="pull-left">
              <strong>Real Name</strong>
            </span> <?php echo $applicant->FNAME .' '.$applicant->MNAME.' '.$applicant->LNAME; ?>
          </li>
        </ul>
        <!-- <a href="compose.html" class="btn btn-primary btn-block margin-bottom">Compose</a> -->
        <div class="box box-solid">
          <div class="box-body no-padding">
            <ul class="nav nav-pills nav-stacked">
              <li class="
								<?php echo ($view=='appliedjobs' || $view=='') ? 'active': '';?>">
                <a href="
									<?php echo web_root.'applicant/index.php?view=appliedjobs'; ?>">
                  <i class="fa fa-list"></i> Applied Jobs </a>
              </li>
              <li class="
								<?php echo ($view=='feedbacks') ? 'active': '';?>">
                <a href="
									<?php echo web_root.'applicant/index.php?view=feedbacks'; ?>">
                  <i class="fa fa-comments"></i> Feedbacks </a>
              </li>
              <li class="
								<?php echo ($view=='accounts') ? 'active': '';?>">
                <a href="
									<?php echo web_root.'applicant/index.php?view=accounts'; ?>">
                  <i class="fa fa-user"></i> Accounts </a>
              </li>
            </ul>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
    </div>
    <div class="col-sm-9"> <?php
        check_message();  
        check_active(); 
            
        ?>
      <!-- <h1>
			<?php echo $applicant->FNAME .' '.$applicant->MNAME.' '.$applicant->LNAME; ?></h1> --> <?php 
    // if ($view =="message") { 
    //  require_once("message.php");
    // }elseif($view=='notification'){  
    //     require_once("notification.php");  
    // }elseif($view=='appliedjobs'){    
    //     require_once("appliedjobs.php"); 
    // }elseif($view=='accounts'){  
    //     require_once("accounts.php");  
    // }else{ 
    //     require_once("appliedjobs.php");
    // } 

    switch ($view) {
      case 'appliedjobs':
        require_once("appliedjobs.php");
        break;
      case 'accounts':
        require_once("accounts.php");
        break;
      case 'feedbacks':
        require_once("feedbacks.php");
        break;
      case 'addfeedback':
          require_once("addfeedback.php");
          break;
      default:
        require_once("appliedjobs.php");
        break;
    }
?>
      <!--   <ul class="nav nav-tabs" id="myTab"><li class="
			<?php echo  $_SESSION['appliedjobs']; ?>"><a href="
			<?php echo web_root.'applicant/index.php?view=appliedjobs'; ?>" >Applied Jobs</a></li><li class="
			<?php echo  $_SESSION['accounts'];  ?>"><a href="
			<?php echo web_root.'applicant/index.php?view=accounts'; ?>" >Accounts</a></li></ul><div class="tab-content bottomline"><div class="tab-pane 
			<?php echo $_SESSION['appliedjobs']; ?>" id="appliedjobs"><br/></div><div class="tab-pane 
			<?php echo $_SESSION['accounts']; ?>" id="accounts"><br/></div></div> -->
    </div>
    <!--/col-sm-9-->
  </div>
  <!--/row-->
</div>

<?php  
  unset($_SESSION['appliedjobs']);
  unset($_SESSION['feedbacks']);
  unset($_SESSION['accounts']); 
?>