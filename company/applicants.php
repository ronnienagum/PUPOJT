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

<?php if (!isset($_GET['viewapplicants'])) {  ?>
<div>
	<div>

    <div class="col-lg-12">
            <h1 class="page-header">List of Applicants <?php $_GET['jobid']?> </h1>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
                
 
					<form action="controller.php" Method="POST">   	
							
						<div class="table-responsive">					
							<table id="dash-table" class="table table-striped table-bordered table-hover" style="font-size:12px" cellspacing="0">

								<thead>
									<tr>
									<th>Applicant ID</th>
									<th>Applicant</th>
									<th>Job Title</th>
									<th>Job Description</th>
									<th>Department</th> 
									<th>Rating</th> 
									<th width="14%" >Action </th> 
									</tr>	
								</thead> 
								<tbody>
									<?php   
										// $mydb->setQuery("SELECT * 
											// 			FROM  `tblusers` WHERE TYPE != 'Customer'");
										$mydb->setQuery("SELECT * 
										from tbljobregistration left join 
										(select SUM(applicant.rating) as rating, applicant.applicant_id
										from tblskills vacancy
										left join (select *
										from tblskills
										where applicant_id is not null) as applicant on 
										vacancy.category_id = applicant.category_id &&
										vacancy.id != applicant.id
										where vacancy.applicant_id is null) as scoring on tbljobregistration.APPLICANTID = scoring.applicant_id inner join tbljob on tbljobregistration.JOBID = tbljob.JOBID
										where PENDINGAPPLICATION = 1 and tbljobregistration.JOBID = ". $_GET['jobid'] ."
										order by rating;");
										$cur = $mydb->loadResultList();

									foreach ($cur as $result) { 
										echo '<tr>';
										// echo '<td width="5%" align="center"></td>';
										echo '<td>'. $result->APPLICANTID.'</td>';
										echo '<td>' . $result->APPLICANT.'</a></td>';
										echo '<td>' . $result->OCCUPATIONTITLE.'</a></td>'; 
										echo '<td>'. $result->JOBDESCRIPTION.'</td>';
										echo '<td>'. $result->SECTOR_VACANCY.'</td>';  
										echo '<td>'. $result->rating.'</td>';  
										
										echo '<td align="center" >    
														<a title="View" href="index.php?view=appliedjobs&p=job&viewapplicants=job&id='.$result->REGISTRATIONID.'" class="btn btn-info btn-xs  ">
														<span class="fa fa-info fw-fa"></span> View</a> 
											</td>';
										echo '</tr>';
									} 
									?>
								</tbody>
								
							</table>
						</div>
							 
					</form>
</div>

<?php }else{
          require_once ("viewapplicant.php");          
        } ?>
       
                 
 