<?php 
    $applicant = new Applicants();
    $appl = $applicant->single_applicant($_SESSION['APPLICANTID']);
  ?>
  <style type="text/css">
    .form-group {
      margin-bottom: 5px;
    }
  </style>
 <form class="form-horizontal span6" action="controller.php?action=addfeedback" method="POST">

    <div class="row">
      <div class="col-lg-12">
          <h1 class="page-header">Add New Feedback</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div> 

    <div class="form-group">
        <div class="col-md-8">
          <label class="col-md-4 control-label" for=
          "COMPANYNAME">Company Name:</label>

          <div class="col-md-8">
            <select class="form-control input-sm" id="COMPANYID" name="COMPANYID">
              <option value="None">Select</option>
              <?php 
                $sql ="Select * From tblcompany";
                $mydb->setQuery($sql);
                $res  = $mydb->loadResultList();
                foreach ($res as $row) {
                  # code...
                  echo '<option value='.$row->COMPANYID.'>'.$row->COMPANYNAME.'</option>';
                }

              ?>
            </select>
          </div>
        </div>
      </div>  

      <div class="form-group">
        <div class="col-md-8">
          <label class="col-md-4 control-label" for=
          "JOBDESCRIPTION">Describe your Experience:</label> 
          <div class="col-md-8">
            <textarea class="form-control input-sm" id="DESCRIPTION" name="DESCRIPTION" placeholder="Description"   autocomplete="none"></textarea> 
          </div>
        </div>
      </div>  

      <div class="form-group">
        <div class="col-md-8">
          <label class="col-md-4 control-label" for=
          "idno"></label>  

          <div class="col-md-8">
            <button class="btn btn-primary btn-sm" name="save" type="submit" ><span class="fa fa-save fw-fa"></span> Submit Feedback</button>
          <!-- <a href="index.php" class="btn btn-info"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;<strong>Back</strong></a> -->
        
        </div>
        </div>
      </div> 


</form>

