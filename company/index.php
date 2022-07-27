<?php 
require_once("../include/initialize.php");  
if (!isset($_SESSION['COMPANYID'])) {
	redirect(web_root.'index.php');
}
$view = (isset($_GET['view']) && $_GET['view'] != '') ? $_GET['view'] : '';
switch ($view) { 
	case 'vacancies' :
	    $title="Vacancies";	
        $_SESSION['vacancies']	='active' ; 
		$content ='Profile.php';
		break;

	case 'feedbacks' :
	    $title="Feedbacks";	
        $_SESSION['feedbacks']	='active' ; 
		$content ='Profile.php';
		break;
	case 'addfeedback' :
	    $title="Add Feedback";	
        $_SESSION['addfeedback']	='active' ; 
		$content ='Profile.php';
		break;
  
	case 'accounts' : 
	    $title="Profile";	
        $_SESSION['accounts']	='active' ;
        $content ='Profile.php';
		break;
	 
	default : 
	    $title="Profile";	
        $_SESSION['appliedjobs']	='active' ;
		$content ='Profile.php';		
}
require_once("../theme/templates.php");
?>