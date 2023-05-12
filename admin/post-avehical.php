<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{ 

if(isset($_POST['submit']))
  {
$vehicletitle=$_POST['vehicletitle'];
$brand=$_POST['brandname'];
$vehicleoverview=$_POST['vehicalorcview'];
$priceperday=$_POST['priceperday'];
$position=$_POST['position'];
$modelyear=$_POST['modelyear'];
$quantity=$_POST['quantity'];
$vimage1=$_FILES["img1"]["name"];
$vimage2=$_FILES["img2"]["name"];
$vimage3=$_FILES["img3"]["name"];
$vimage4=$_FILES["img4"]["name"];
$vimage5=$_FILES["img5"]["name"];
$helmet=$_POST['helmet'];
$bikebag=$_POST['bikebag'];
$patchkit=$_POST['patchkit'];
$sparetube=$_POST['sparetube'];
$minimumtools=$_POST['minimumtools'];
$pump=$_POST['pump'];
$tirepressuregauge=$_POST['tirepressuregauge'];
$waterbottle=$_POST['waterbottle'];
$lock=$_POST['lock'];
$mirror=$_POST['mirror'];
$fannypack=$_POST['fannypack'];
$compass=$_POST['compass'];
move_uploaded_file($_FILES["img1"]["tmp_name"],"img/vehicleimages/".$_FILES["img1"]["name"]);
move_uploaded_file($_FILES["img2"]["tmp_name"],"img/vehicleimages/".$_FILES["img2"]["name"]);
move_uploaded_file($_FILES["img3"]["tmp_name"],"img/vehicleimages/".$_FILES["img3"]["name"]);
move_uploaded_file($_FILES["img4"]["tmp_name"],"img/vehicleimages/".$_FILES["img4"]["name"]);
move_uploaded_file($_FILES["img5"]["tmp_name"],"img/vehicleimages/".$_FILES["img5"]["name"]);

$sql="INSERT INTO tblvehicles(VehiclesTitle,VehiclesBrand,VehiclesOverview,PricePerDay,Position,ModelYear,Quantity,Vimage1,Vimage2,Vimage3,Vimage4,Vimage5,HelmetEquip,BikebagEquip,PatchkitEquip,SparetubeEquip,MinimumtoolsEquip,PumpEquip,TirepressuregaugeEquip,WaterbottleEquip,LockEquip,MirrorEquip,FannyEquip,CompassEquip) VALUES(:vehicletitle,:brand,:vehicleoverview,:priceperday,:position,:modelyear,:quantity,:vimage1,:vimage2,:vimage3,:vimage4,:vimage5,:helmet,:bikebag,:patchkit,:sparetube,:minimumtools,:pump,:tirepressuregauge,:waterbottle,:lock,:mirror,:fannypack,:compass)";
$query = $dbh->prepare($sql);
$query->bindParam(':vehicletitle',$vehicletitle,PDO::PARAM_STR);
$query->bindParam(':brand',$brand,PDO::PARAM_STR);
$query->bindParam(':vehicleoverview',$vehicleoverview,PDO::PARAM_STR);
$query->bindParam(':priceperday',$priceperday,PDO::PARAM_STR);
$query->bindParam(':position',$position,PDO::PARAM_STR);
$query->bindParam(':modelyear',$modelyear,PDO::PARAM_STR);
$query->bindParam(':quantity',$quantity,PDO::PARAM_STR);
$query->bindParam(':vimage1',$vimage1,PDO::PARAM_STR);
$query->bindParam(':vimage2',$vimage2,PDO::PARAM_STR);
$query->bindParam(':vimage3',$vimage3,PDO::PARAM_STR);
$query->bindParam(':vimage4',$vimage4,PDO::PARAM_STR);
$query->bindParam(':vimage5',$vimage5,PDO::PARAM_STR);
$query->bindParam(':helmet',$helmet,PDO::PARAM_STR);
$query->bindParam(':bikebag',$bikebag,PDO::PARAM_STR);
$query->bindParam(':patchkit',$patchkit,PDO::PARAM_STR);
$query->bindParam(':sparetube',$sparetube,PDO::PARAM_STR);
$query->bindParam(':minimumtools',$minimumtools,PDO::PARAM_STR);
$query->bindParam(':pump',$pump,PDO::PARAM_STR);
$query->bindParam(':tirepressuregauge',$tirepressuregauge,PDO::PARAM_STR);
$query->bindParam(':waterbottle',$waterbottle,PDO::PARAM_STR);
$query->bindParam(':lock',$lock,PDO::PARAM_STR);
$query->bindParam(':mirror',$mirror,PDO::PARAM_STR);
$query->bindParam(':fannypack',$fannypack,PDO::PARAM_STR);
$query->bindParam(':compass',$compass,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Bicycle posted successfully";
}
else 
{
$error="Something Went Wrong. Please Try Again";
}

}


	?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>Bicycle Rental | Admin Post Bicycle</title>

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
<style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>

</head>

<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Post a Bicycle</h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Basic Info</div>
<?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>

									<div class="panel-body">
<form method="post" class="form-horizontal" enctype="multipart/form-data">
<div class="form-group">
<label class="col-sm-2 control-label">Name<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="vehicletitle" class="form-control" required>
</div>
<label class="col-sm-2 control-label">Brand<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="brandname" required>
<option value=""> Select </option>
<?php $ret="select id,BrandName from tblbrands";
$query= $dbh -> prepare($ret);
//$query->bindParam(':id',$id, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($results as $result)
{
?>
<option value="<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->BrandName);?></option>
<?php }} ?>

</select>
</div>
</div>
											
<div class="hr-dashed"></div>
<div class="form-group">
<label class="col-sm-2 control-label">Details<span style="color:red">*</span></label>
<div class="col-sm-10">
<textarea class="form-control" name="vehicalorcview" rows="3" required></textarea>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Price<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="priceperday" class="form-control" required>
</div>
<label class="col-sm-2 control-label">Status<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="position" required>
<option value=""> Select </option>

<option value="Available">Available</option>
<option value="NotAvailable">Not Available</option>
</select>
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Year<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="modelyear" class="form-control" required>
</div>
<label class="col-sm-2 control-label">Quantity<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="quantity" class="form-control" required>
</div>
</div>
<div class="hr-dashed"></div>


<div class="form-group">
<div class="col-sm-12">
<h4><b>Upload Images</b></h4>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 1 <span style="color:red">*</span><input type="file" name="img1" required>
</div>
<div class="col-sm-4">
Image 2<span style="color:red">*</span><input type="file" name="img2" required>
</div>
<div class="col-sm-4">
Image 3<span style="color:red">*</span><input type="file" name="img3" required>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 4<span style="color:red">*</span><input type="file" name="img4" required>
</div>
<div class="col-sm-4">
Image 5<input type="file" name="img5">
</div>

</div>
<div class="hr-dashed"></div>									
</div>
</div>
</div>
</div>
							

<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-heading">Accessories</div>
<div class="panel-body">


<div class="form-group">
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="helmet" name="helmet" value="1">
<label for="helmet"> Helmet </label>
</div>
</div>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="bikebag" name="bikebag" value="1">
<label for="bikebag"> Bike Bag </label>
</div></div>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="patchkit" name="patchkit" value="1">
<label for="patchkit"> Patch Kit </label>
</div></div>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="sparetube" name="sparetube" value="1">
<label for="sparetube"> Spare Tube </label>
</div>
</div>



<div class="form-group">
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="minimumtools" name="minimumtools" value="1">
<input type="checkbox" id="minimumtools" name="minimumtools" value="1">
<label for="inlineCheckbox5"> Minimum Tools </label>
</div>
</div>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="pump" name="pump" value="1">
<label for="pump">Pump</label>
</div>
</div>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="tirepressuregauge" name="tirepressuregauge" value="1">
<label for="tirepressuregauge"> Tire Pressure Gauge </label>
</div></div>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="waterbottle" name="waterbottle" value="1">
<label for="waterbottle"> Water Bottle and Cage </label>
</div>
</div>


<div class="form-group">
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="lock" name="lock" value="1">
<label for="lock"> Lock </label>
</div>
</div>
<div class="col-sm-3">
<div class="checkbox h checkbox-inline">
<input type="checkbox" id="mirror" name="mirror" value="1">
<label for="mirror">Rear-View Mirror</label>
</div></div>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="fannypack" name="fannypack" value="1">
<label for="fannypack"> Fanny Pack </label>
</div></div>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="compass" name="compass" value="1">
<label for="compass"> Compass </label>
</div>
</div>
</div>




											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2">
													<button class="btn btn-default" type="reset">Cancel</button>
													<button class="btn btn-primary" name="submit" type="submit">Save changes</button>
												</div>
											</div>

										</form>
									</div>
								</div>
							</div>
						</div>
						
					

					</div>
				</div>
				
			

			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
<?php } ?>