<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['update']))
{
   $id= $_SESSION['edid'];
   $service=$_POST['service'];
  $name=$_POST['name'];
  $mobnum=$_POST['contact'];
  $email=$_POST['email'];
  $edate=$_POST['eventdate'];
  $est=$_POST['est'];
  $eetime=$_POST['eetime'];
  $vaddress=$_POST['address'];
  $eventtype=$_POST['eventtype'];
  $addinfo=$_POST['info'];
  $sql="UPDATE `tblbooking` SET `ServiceID`=:service,`Name`=:name,`MobileNumber`=:mobile,`Email`=:email,`EventDate`=:evdate,`EventStartingtime`=:evst,`EventEndingtime`=:evet,`VenueAddress`=:vaddress,`EventType`=:eventtype,`AdditionalInformation`=:addinfo where tblbooking.ID=:id";
  $query=$dbh->prepare($sql);
  
  $query->bindParam(':service',$service);
  $query->bindParam(':name',$name,PDO::PARAM_STR);
  $query->bindParam(':mobile',$mobnum,PDO::PARAM_STR);
  $query->bindParam(':email',$email,PDO::PARAM_STR);
  $query->bindParam(':evdate',$edate,PDO::PARAM_STR);
  $query->bindParam(':evst',$est,PDO::PARAM_STR);
  $query->bindParam(':evet',$eetime,PDO::PARAM_STR);
  $query->bindParam(':vaddress',$vaddress,PDO::PARAM_STR);
  $query->bindParam(':eventtype',$eventtype,PDO::PARAM_STR);
  $query->bindParam(':addinfo',$addinfo,PDO::PARAM_STR);
  $query-> bindParam(':id', $id, PDO::PARAM_STR);

  $query->execute();
  if ($query->execute()){
    echo '<script>alert("Booking has been updated")</script>';
  }else{
    echo '<script>alert("update failed! try again later")</script>';
  }
}
?>
<div class="card-body">
  <h4 class="card-title">Update Booking Form </h4>
  <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
    <?php
    //include('includes/dbconnection.php');
    $eid=$_POST['edit_id'];
     $sql = "SELECT * from  tblbooking where tblbooking.ID =$eid ";
                            $query = $dbh -> prepare($sql);
                            $query->execute();
                            $result=$query->fetchAll(PDO::FETCH_OBJ);

                            foreach($result as $row1)
{
  $_SESSION['edid']=$row1->ID;

    ?>
   <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="label" for="name">Full Name</label>
                          <input type="text" value="<?php echo $row1->Name; ?>" class="form-control" name="name" id="name" placeholder="Name">
                        </div>
                      </div>
                      <div class="col-md-6"> 
                        <div class="form-group">
                          <label class="label" for="email">Email Address</label>
                          <input type="email" value="<?php echo $row1->Email; ?>" class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="label" for="name">Contact No</label>
                          <input type="text" value="<?php echo $row1->MobileNumber; ?>" class="form-control" name="contact" id="contact" placeholder="contact">
                        </div>
                      </div>
                      <div class="col-md-6"> 
                        <div class="form-group">
                          <label class="label" for="email">Event Date</label>
                          <input type="date" value="<?php echo $row1->EventDate; ?>" class="form-control" name="eventdate" id="eventdate" placeholder="">
                        </div>
                      </div>
 
                        <div class="col-md-12">
                        <div class="form-group">
                          <label class="label" for="subject">Type of Service:</label>
                          <select type="text" class="form-control" name="service" required="true" >
                            
                            <?php 

                            $sql1 = "SELECT * from tblservice ";
                            $query1 = $dbh -> prepare($sql1);
                            $query1->execute();
                            $result1=$query1->fetchAll(PDO::FETCH_OBJ);

                            foreach($result1 as $row2)
                            {          
                              ?>  
                              <option <?php if($row2->ID ==$row1->ServiceID){echo 'selected';}?> value="<?php echo htmlentities($row2->ID);?>"><?php echo htmlentities($row2->ServiceName);?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="label" for="name">Event Starting Time</label>
                          <select type="text" class="form-control" name="est" required="true">
                            
                            <option <?php if($row1->EventStartingtime =='1 a.m'){echo 'selected';}?> value="1 a.m">1 a.m</option>
                            <option <?php if($row1->EventStartingtime =='2 a.m'){echo 'selected';}?> value="2 a.m">2 a.m</option>
                            <option <?php if($row1->EventStartingtime =='3 a.m'){echo 'selected';}?> value="3 a.m">3 a.m</option>
                            <option <?php if($row1->EventStartingtime =='4 a.m'){echo 'selected';}?> value="4 a.m">4 a.m</option>
                            <option <?php if($row1->EventStartingtime =='5 a.m'){echo 'selected';}?> value="5 a.m">5 a.m</option>
                            <option <?php if($row1->EventStartingtime =='6 a.m'){echo 'selected';}?> value="6 a.m">6 a.m</option>
                            <option <?php if($row1->EventStartingtime =='7 a.m'){echo 'selected';}?> value="7 a.m">7 a.m</option>
                            <option <?php if($row1->EventStartingtime =='8 a.m'){echo 'selected';}?> value="8 a.m">8 a.m"</option>
                            <option <?php if($row1->EventStartingtime =='9 a.m'){echo 'selected';}?> value="9 a.m">9 a.m</option>
                            <option  <?php if($row1->EventStartingtime =='10 a.m'){echo 'selected';}?> value="10 a.m">10 a.m</option>
                            <option  <?php if($row1->EventStartingtime =='11 a.m'){echo 'selected';}?> value="11 a.m">11 a.m</option>
                            <option  <?php if($row1->EventStartingtime =='12 p.m'){echo 'selected';}?> value="12 p.m">12 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='1 p.m'){echo 'selected';}?> value="1 p.m">1 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='2 p.m'){echo 'selected';}?> value="2 p.m">2 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='3 p.m'){echo 'selected';}?> value="3 p.m">3 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='4 p.m'){echo 'selected';}?> value="4 p.m">4 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='5 p.m'){echo 'selected';}?> value="5 p.m">5 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='6 p.m'){echo 'selected';}?> value="6 p.m">6 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='7 p.m'){echo 'selected';}?> value="7 p.m">7 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='8 p.m'){echo 'selected';}?> value="8 p.m">8 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='9 p.m'){echo 'selected';}?> value="9 p.m">9 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='10 p.m'){echo 'selected';}?> value="10 p.m">10 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='11 p.m'){echo 'selected';}?> value="11 p.m">11 p.m</option>
                            <option  <?php if($row1->EventStartingtime =='12 a.m'){echo 'selected';}?> value="12 a.m">12 a.m</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6"> 
                        <div class="form-group">
                          <label class="label" for="email">Event Finish Time</label>
                          <select type="text" class="form-control" name="eetime" required="true">
                            <option <?php if($row1->EventEndingtime =='1 a.m'){echo 'selected';}?> value="1 a.m">1 a.m</option>
                            <option <?php if($row1->EventEndingtime =='2 a.m'){echo 'selected';}?> value="2 a.m">2 a.m</option>
                            <option <?php if($row1->EventEndingtime =='3 a.m'){echo 'selected';}?> value="3 a.m">3 a.m</option>
                            <option <?php if($row1->EventEndingtime =='4 a.m'){echo 'selected';}?> value="4 a.m">4 a.m</option>
                            <option <?php if($row1->EventEndingtime =='5 a.m'){echo 'selected';}?> value="5 a.m">5 a.m</option>
                            <option <?php if($row1->EventEndingtime =='6 a.m'){echo 'selected';}?> value="6 a.m">6 a.m</option>
                            <option <?php if($row1->EventEndingtime =='7 a.m'){echo 'selected';}?> value="7 a.m">7 a.m</option>
                            <option <?php if($row1->EventEndingtime =='8 a.m'){echo 'selected';}?> value="8 a.m">8 a.m"</option>
                            <option <?php if($row1->EventEndingtime =='9 a.m'){echo 'selected';}?> value="9 a.m">9 a.m</option>
                            <option  <?php if($row1->EventEndingtime =='10 a.m'){echo 'selected';}?> value="10 a.m">10 a.m</option>
                            <option  <?php if($row1->EventEndingtime =='11 a.m'){echo 'selected';}?> value="11 a.m">11 a.m</option>
                            <option  <?php if($row1->EventEndingtime =='12 p.m'){echo 'selected';}?> value="12 p.m">12 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='1 p.m'){echo 'selected';}?> value="1 p.m">1 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='2 p.m'){echo 'selected';}?> value="2 p.m">2 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='3 p.m'){echo 'selected';}?> value="3 p.m">3 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='4 p.m'){echo 'selected';}?> value="4 p.m">4 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='5 p.m'){echo 'selected';}?> value="5 p.m">5 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='6 p.m'){echo 'selected';}?> value="6 p.m">6 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='7 p.m'){echo 'selected';}?> value="7 p.m">7 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='8 p.m'){echo 'selected';}?> value="8 p.m">8 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='9 p.m'){echo 'selected';}?> value="9 p.m">9 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='10 p.m'){echo 'selected';}?> value="10 p.m">10 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='11 p.m'){echo 'selected';}?> value="11 p.m">11 p.m</option>
                            <option  <?php if($row1->EventEndingtime =='12 a.m'){echo 'selected';}?> value="12 a.m">12 a.m</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="label" for="#">Venue Address</label>
                          <textarea name="address"  class="form-control" id="address" cols="30" rows="4" placeholder=""><?php echo $row1->VenueAddress; ?></textarea>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="label" for="subject">Type of Event:</label>
                          <select type="text" class="form-control" name="eventtype" required="true" >
                            <option value="">Choose Event Type</option>
                            <?php 

                            $sql2 = "SELECT * from   tbleventtype ";
                            $query2 = $dbh -> prepare($sql2);
                            $query2->execute();
                            $result2=$query2->fetchAll(PDO::FETCH_OBJ);

                            foreach($result2 as $row)
                            {          
                              ?>  
                              <option <?php if($row1->EventType ==$row->EventType){echo 'selected';}?> value="<?php echo htmlentities($row->EventType);?>"><?php echo htmlentities($row->EventType);?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="label" for="#">Additional Information</label>
                          <textarea name="info" class="form-control" id="info" cols="30" rows="4" placeholder=""><?php echo $row1->AdditionalInformation; ?></textarea>
                        </div>
                      </div>
                      <input type="hidden" value="<?php echo $row1->ID; ?>" class="form-control" name="id" >
                      <div class="col-md-12">
                        <div class="form-group">
                         <button type="submit" name="update" class="btn btn-primary btn-fw mr-2">Update</button>
    <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                        </div>
                      </div>
                    </div>
                  <?php } ?>
    
  </form>
</div>