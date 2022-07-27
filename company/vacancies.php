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

<?php if (!isset($_GET['p'])) {  ?>
<div>
	<div>

    <div class="col-lg-12">
            <h1 class="page-header">List of Vacancies  </h1>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
                
 
					<form action="controller.php" Method="POST">   	
							
						<div class="table-responsive">					
							<table id="dash-table" class="table table-striped table-bordered table-hover" style="font-size:12px" cellspacing="0">

								<thead>
									<tr>
										<th>Category</th>
										<th>Job Title</th>
										<th>Interns Required</th>
										<th>Qualification</th> 
										<th>Description</th> 
										<th width="14%" >Action</th> 
									</tr>	
								</thead> 
								<tbody>
									<?php   
										// $mydb->setQuery("SELECT * 
											// 			FROM  `tblusers` WHERE TYPE != 'Customer'");
										$mydb->setQuery("SELECT * FROM tbljob
										WHERE COMPANYID = ". $_SESSION['COMPANYID'] .";");
										$cur = $mydb->loadResultList();

									foreach ($cur as $result) { 
										echo '<tr>';
										// echo '<td width="5%" align="center"></td>';
										echo '<td>'. $result->CATEGORY.'</td>';
										echo '<td>' . $result->OCCUPATIONTITLE.'</a></td>';
										echo '<td>' . $result->REQ_NO_EMPLOYEES.'</a></td>'; 
										echo '<td>'. $result->QUALIFICATION_WORKEXPERIENCE.'</td>';
										echo '<td>'. $result->JOBDESCRIPTION.'</td>';  
										
										echo '<td align="center" >    
														<a title="View" href="index.php?view=appliedjobs&p=job&jobid='.$result->JOBID.'" class="btn btn-info btn-xs  ">
														<span class="fa fa-info fw-fa"></span> View Applicants</a> 
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
          require_once ("applicants.php");          
        } ?>
       
                 
 