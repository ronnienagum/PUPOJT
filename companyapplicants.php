<div class="container">
  <div class="row">
    <aside class="col-sm-4">
			<br>
      <div class="card">
        <article class="card-group-item">
          <header class="card-header">
            <h6 class="title">Menu </h6>
          </header>
          <div class="filter-content">
            <div class="list-group list-group-flush">
              <a href="<?php echo web_root; ?>index.php?q=companyapplicants" class="list-group-item">View Applicants
              </a>
              <a href="<?php echo web_root; ?>index.php?q=companyprofile" class="list-group-item">Profile
              </a>
              <a href="<?php echo web_root; ?>index.php?q=companychangepw" class="list-group-item">Change Password
              </a>
            </div>
          </div>
        </article>
      </div>
    </aside>
    <div class="col-sm-8">
			<br>
      <div class="card">
        <article class="card-group-item">
          <header class="card-header">
            <h6 class="title">List of Applicants </h6>
          </header>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Applicant ID</th>
								<th scope="col">Last Name</th>
								<th scope="col">First Name</th>
								<th scope="col">Middle Name</th>
								<th scope="col">Sex</th>
								<th scope="col">Email Address</th>
								<th scope="col">Contact Number</th>
								<th scope="col">View Application</th>
							</tr>
						</thead>
						<tbody>
				  	<?php 
				  		$mydb->setQuery("SELECT * FROM tbljobregistration inner join tblcompany on tbljobregistration.COMPANYID = tblcompany.COMPANYID inner join tblapplicants on tbljobregistration.APPLICANTID = tblapplicants.APPLICANTID");
				  		$cur = $mydb->loadResultList(); 
						foreach ($cur as $result) {
				  		echo '<tr>';
				  		// echo '<td width="5%" align="center"></td>';
				  		// echo '<td>
				  		//      <input type="checkbox" name="selector[]" id="selector[]" value="'.$result->CATEGORYID. '"/>
				  		// 		' . $result->CATEGORIES.'</a></td>';
				  			echo '<td>' . $result->REGISTRATIONID.'</td>';
				  			echo '<td>' . $result->APPLICANTID.'</td>';
				  			echo '<td>' . $result->LNAME.'</td>';
				  			echo '<td>' . $result->FNAME.'</td>';
				  			echo '<td>' . $result->MNAME.'</td>';
				  			echo '<td>' . $result->SEX.'</td>';
				  			echo '<td>' . $result->EMAILADDRESS.'</td>';
				  			echo '<td>' . $result->CONTACTNO.'</td>';
				  			echo '<td align="center"><a title="Edit" href="index.php?view=edit&id='.$result->JOBID.'" class="btn btn-primary btn-xs  ">  <span class="fa fa-edit fw-fa"></a></td>';
				  		// echo '<td></td>';
				  		echo '</tr>';
				  	} 
				  	?>
						</tbody>
					</table>
        </article>
        <!-- card-group-item.// -->
      </div>
      <!-- card.// -->
		</div>
  </div>
  <!-- row.// -->
</div>