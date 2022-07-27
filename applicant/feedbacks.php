<?php 
    $applicant = new Applicants();
    $appl = $applicant->single_applicant($_SESSION['APPLICANTID']);
  ?>
  <style type="text/css">
    .form-group {
      margin-bottom: 5px;
    }
  </style>
      <div>
       	 <div class="col-lg-12">
            <h1 class="page-header">List of Feedbacks  <a href="index.php?view=addfeedback" class="btn btn-primary btn-xs  ">  <i class="fa fa-plus-circle fw-fa"></i> Add New Feedback</a>  </h1>
       		</div>
   		 </div>
        <form action="controller.php?action=delete" Method="POST">  	
          <div class="table-responsive">					
            <table id="dash-table" class="table table-striped table-bordered table-hover"  style="font-size:12px" cellspacing="0">
              <thead>
                <tr>
                  <th>Company Name</th> 
                  <th>Description</th> 
                </tr>	
              </thead> 
              <tbody>
                <?php 
                  $mydb->setQuery("SELECT * FROM `tbluserfeedback` inner join `tblcompany` on tbluserfeedback.COMPANYID = tblcompany.COMPANYID WHERE CREATEDBY = " . $_SESSION['APPLICANTID'] . "");
                  $cur = $mydb->loadResultList(); 
                foreach ($cur as $result) {
                  echo '<tr>';
                    echo '<td>' . $result->COMPANYNAME.'</td>';
                    echo '<td>' . $result->DESCRIPTION.'</td>';
                  echo '</tr>';
                } 
                ?> 
              </tbody>
              
            </table>
            <div class="btn-group">
              <?php
              if($_SESSION['ADMIN_ROLE']=='Administrator'){
              ; }?>
            </div>
        </form>
  </div>