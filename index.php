<?php 
	require_once("include/initialize.php"); 
	$content='home.php';
	$view = (isset($_GET['q']) && $_GET['q'] != '') ? $_GET['q'] : '';

	switch ($view) { 
		case 'apply' :
					$title="Submit Application";	
			$content='applicationform.php';		
			break;
		case 'login' : 
					$title="Login";	
			$content='login.php';		
			break;
		case 'company' :
					$title="Company";	
			$content='company.php';		
			break;
		case 'companyapplicants' :
					$title="Company Applications";	
			$content='companyapplicants.php';		
			break;
		case 'companyprofile' :
					$title="Company Profile";	
			$content='companyprofile.php';		
			break;
		case 'companychangepw' :
					$title="Change Password";	
			$content='companychangepw.php';		
			break;
		case 'hiring' :
			$title = isset($_GET['search']) ? 'Hiring in '.$_GET['search'] :"Hiring"; 
			$content='hirring.php';		
			break;		
		case 'category' :
					$title='Search for '. $_GET['search'];	
			$content='category.php';		
			break;
		case 'viewjob' :
					$title="Job Details";	
			$content='viewjob.php';		
			break;
		case 'success' :
					$title="Success";	
			$content='success.php';		
			break;
		case 'register' :
					$title="Register New Member";	
			$content='register.php';		
			break;
		case 'Contact' :
					$title='Contact Us';	
			$content='Contact.php';		
			break;	
		case 'About' :
					$title='About Us';	
			$content='About.php';		
			break;	
		case 'advancesearch' :
					$title='Search';	
			$content='advancesearch.php';		
			break;	
		case 'result' :
					$title='Search';	
			$content='advancesearchresult.php';		
			break;
		case 'userapplications' :
					$title="User Applications";	
			$content='userapplications.php';		
			break;
		case 'userchangepw' :
					$title="Change Password";	
			$content='userchangepw.php';		
			break;
		case 'userfeedback' :
					$title="User Feedback";	
			$content='userfeedback.php';		
			break;
		case 'userprofile' :
					$title="User Profile";	
			$content='userprofile.php';		
			break;						
		default :
				$active_home='active';
				$title="Home";	
			$content ='home.php';		

	}
	require_once("theme/templates.php");
?>