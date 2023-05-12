<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{ 

if(isset($_POST['submitbtn']))
  {
$vehicletitle=$_POST['vehicletitle'];
$brand=$_POST['brandname'];
$vehicleoverview=$_POST['vehicalorcview'];
$priceperday=$_POST['priceperday'];
$position=$_POST['position'];
$modelyear=$_POST['modelyear'];
$quantity=$_POST['quantity'];
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
$id=intval($_GET['id']);

$sql="update tblvehicles set VehiclesTitle=:vehicletitle,VehiclesBrand=:brand,VehiclesOverview=:vehicleoverview,PricePerDay=:priceperday,Position=:position,ModelYear=:modelyear,Quantity=:quantity,HelmetEquip=:helmet,BikebagEquip=:bikebag,PatchkitEquip=:patchkit,SparetubeEquip=:sparetube,MinimumtoolsEquip=:minimumtools,PumpEquip=:pump,TirepressuregaugeEquip=:tirepressuregauge,WaterbottleEquip=:waterbottle,LockEquip=:lock,MirrorEquip=:mirror,FannyEquip=:fannypack,CompassEquip=:compass where id=:id ";
$query = $dbh->prepare($sql);
$query->bindParam(':vehicletitle',$vehicletitle,PDO::PARAM_STR);
$query->bindParam(':brand',$brand,PDO::PARAM_STR);
$query->bindParam(':vehicleoverview',$vehicleoverview,PDO::PARAM_STR);
$query->bindParam(':priceperday',$priceperday,PDO::PARAM_STR);
$query->bindParam(':position',$position,PDO::PARAM_STR);
$query->bindParam(':modelyear',$modelyear,PDO::PARAM_STR);
$query->bindParam(':quantity',$quantity,PDO::PARAM_STR);
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
$query->bindParam(':id',$id,PDO::PARAM_STR);
$query->execute();

$msg="Data updated successfully";


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
	
	<title>Admin Edit Bicycle Info</title>

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
					
						<h2 class="page-title">Edit Bicycle</h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Basic Info</div>
									<div class="panel-body">
<?php if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
<?php 
$id=intval($_GET['id']);
$sql ="SELECT tblvehicles.*,tblbrands.BrandName,tblbrands.id as bid from tblvehicles join tblbrands on tblbrands.id=tblvehicles.VehiclesBrand where tblvehicles.id=:id";
$query = $dbh -> prepare($sql);
$query-> bindParam(':id', $id, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

<form method="post" class="form-horizontal" enctype="multipart/form-data">
<div class="form-group">
<label class="col-sm-2 control-label">Name<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="vehicletitle" class="form-control" value="<?php echo htmlentities($result->VehiclesTitle)?>" required>
</div>
<label class="col-sm-2 control-label">Brand<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="brandname" required>
<option value="<?php echo htmlentities($result->bid);?>"><?php echo htmlentities($bdname=$result->BrandName); ?> </option>
<?php $ret="select id,BrandName from tblbrands";
$query= $dbh -> prepare($ret);
//$query->bindParam(':id',$id, PDO::PARAM_STR);
$query-> execute();
$resultss = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($resultss as $results)
{
if($results->BrandName==$bdname)
{
continue;
} else{
?>
<option value="<?php echo htmlentities($results->id);?>"><?php echo htmlentities($results->BrandName);?></option>
<?php }}} ?>

</select>
</div>
</div>
											
<div class="hr-dashed"></div>
<div class="form-group">
<label class="col-sm-2 control-label">Details<span style="color:red">*</span></label>
<div class="col-sm-10">
<textarea class="form-control" name="vehicalorcview" rows="3" required><?php echo htmlentities($result->VehiclesOverview);?></textarea>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Price<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="priceperday" class="form-control" value="<?php echo htmlentities($result->PricePerDay);?>" required>
</div>
<label class="col-sm-2 control-label">Status<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="position" required>
<option value="<?php echo htmlentities($results->Position);?>"> <?php echo htmlentities($result->Position);?> </option>

<option value="Available">Available</option>
<option value="NotAvailable">Not Available</option>
</select>
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Year<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="modelyear" class="form-control" value="<?php echo htmlentities($result->ModelYear);?>" required>
</div>
<label class="col-sm-2 control-label">Quantity<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="quantity" class="form-control" value="<?php echo htmlentities($result->Quantity);?>" required>
</div>
</div>
<div class="hr-dashed"></div>								
<div class="form-group">
<div class="col-sm-12">
<h4><b>Bicycle Images</b></h4>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 1 <img src="img/vehicleimages/<?php echo htmlentities($result->Vimage1);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage1.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 1</a>
</div>
<div class="col-sm-4">
Image 2<img src="img/vehicleimages/<?php echo htmlentities($result->Vimage2);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage2.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 2</a>
</div>
<div class="col-sm-4">
Image 3<img src="img/vehicleimages/<?php echo htmlentities($result->Vimage3);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage3.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 3</a>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 4<img src="img/vehicleimages/<?php echo htmlentities($result->Vimage4);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage4.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 4</a>
</div>
<div class="col-sm-4">
Image 5
<?php if($result->Vimage5=="")
{
echo htmlentities("File not available");
} else {?>
<img src="img/vehicleimages/<?php echo htmlentities($result->Vimage5);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage5.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 5</a>
<?php } ?>
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
<?php if($result->HelmetEquip==1)
{?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="helmet" checked value="1">
<label for="inlineCheckbox1"> Helmet </label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="helmet" value="1">
<label for="inlineCheckbox1"> Helmet </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->BikebagEquip==1)
{?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="bikebag" checked value="1">
<label for="inlineCheckbox2"> Bike Bag </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="bikebag" value="1">
<label for="inlineCheckbox2"> Bike Bag </label>
</div>
<?php }?>
</div>
<div class="col-sm-3">
<?php if($result->PatchkitEquip==1)
{?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="patchkit" checked value="1">
<label for="inlineCheckbox3"> Patch Kit </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="patchkit" value="1">
<label for="inlineCheckbox3"> Patch Kit </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->SparetubeEquip==1)
{
	?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="sparetube" checked value="1">
<label for="inlineCheckbox3"> Spare Tube </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="sparetube" value="1">
<label  for="inlineCheckbox3"> Spare Tube </label>
</div>
<?php } ?>	
</div>

<div class="form-group">
<?php if($result->MinimumtoolsEquip==1)
{
	?>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="minimumtools" checked value="1">
<label for="inlineCheckbox1"> Minimum Tools </label>
</div>
<?php } else {?>
<div class="col-sm-3">
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="minimumtools" value="1">
<label for="inlineCheckbox1"> Minimum Tools </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->PumpEquip==1)
{
?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="pump" checked value="1">
<label for="inlineCheckbox2">Pump</label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="pump" value="1">
<label for="inlineCheckbox2">Pump</label>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->TirepressuregaugeEquip==1)
{
?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="tirepressuregauge" checked value="1">
<label for="inlineCheckbox3"> Tire Pressure Gauge </label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="tirepressuregauge" value="1">
<label for="inlineCheckbox3"> Tire Pressure Gauge </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->WaterbottleEquip==1)
{
?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="waterbottle" checked value="1">
<label for="inlineCheckbox3"> Water Bottle and Cage </label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="waterbottle" value="1">
<label for="inlineCheckbox3"> Water Bottle and Cage </label>
</div>
<?php } ?>
</div>


<div class="form-group">
<div class="col-sm-3">
<?php if($result->LockEquip==1)
{
?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="lock" checked value="1">
<label for="inlineCheckbox1"> Lock </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="lock" value="1">
<label for="inlineCheckbox1"> Lock </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->MirrorEquip==1)
{
?>
<div class="checkbox  checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="mirror" checked value="1">
<label for="inlineCheckbox2">Rear-View Mirror</label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="mirror" value="1">
<label for="inlineCheckbox2">Rear-View Mirror</label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->FannyEquip==1)
{
?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="fannypack" checked value="1">
<label for="inlineCheckbox3">Fanny Pack</label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="fannypack" value="1">
<label for="inlineCheckbox3">Fanny Pack</label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->CompassEquip==1)
{
?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="compass" checked value="1">
<label for="inlineCheckbox3">Compass</label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="compass" value="1">
<label for="inlineCheckbox3">Compass</label>
</div>
<?php } ?>
</div>
</div>

<?php }} ?>


											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2" >
													
													<button class="btn btn-primary" name="submitbtn" type="submit" style="margin-top:4%">Save changes</button>
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