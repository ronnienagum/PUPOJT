<?php
	 if(!isset($_SESSION['COMPANYID'])){
      redirect(web_root."index.php");
     }

?> 
<style type="text/css">
	.form-group {
		margin-bottom: 5px;
	}
</style>
	<div>
    <div class="col-lg-12">
            <h1 class="page-header">List of Applicants   </h1>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
                
 
					<form action="controller.php" Method="POST">   	
							
						<div class="table-responsive">					
							<table id="dash-table" class="table table-striped table-bordered table-hover" style="font-size:12px" cellspacing="0">

								<thead>
									<tr>
									<th>Applicant</th>
									<th>Job Title</th>
									<th>Company</th>
									<th>Applied Date</th> 
									<th>Remarks</th>
									<th width="14%" >Action</th> 
									</tr>	
								</thead> 
								<tbody>
									<?php   
										// $mydb->setQuery("SELECT * 
											// 			FROM  `tblusers` WHERE TYPE != 'Customer'");
										$mydb->setQuery("SELECT * FROM `tblcompany` c  , `tbljobregistration` j, `tbljob` j2, `tblapplicants` a WHERE c.`COMPANYID`=j.`COMPANYID` AND  j.`JOBID`=j2.`JOBID` AND j.`APPLICANTID`=a.`APPLICANTID`
										and  c.`COMPANYID` = ". $_SESSION['COMPANYID'] ."; ");
										$cur = $mydb->loadResultList();

									foreach ($cur as $result) { 
										echo '<tr>';
										// echo '<td width="5%" align="center"></td>';
										echo '<td>'. $result->APPLICANT.'</td>';
										echo '<td>' . $result->OCCUPATIONTITLE.'</a></td>';
										echo '<td>' . $result->COMPANYNAME.'</a></td>'; 
										echo '<td>'. $result->REGISTRATIONDATE.'</td>';
										echo '<td>'. $result->REMARKS.'</td>';  
										echo '<td align="center" >    
														<a title="View" href="index.php?view=view&id='.$result->REGISTRATIONID.'"  class="btn btn-info btn-xs  ">
														<span class="fa fa-info fw-fa"></span> View</a> 
														<a title="Remove" href="index.php?view=delete&id='.$result->REGISTRATIONID.'"  class="btn btn-danger btn-xs  ">
														<span class="fa fa-trash-o fw-fa"></span> Remove</a> 
											</td>';
										echo '</tr>';
									} 
									?>
								</tbody>
								
							</table>
						</div>
							 
					</form>
       
                 
 