<?php
if(isset($_POST['emailsubscibe']))
{
$subscriberemail=$_POST['subscriberemail'];
$sql ="SELECT SubscriberEmail FROM tblsubscribers WHERE SubscriberEmail=:subscriberemail";
$query= $dbh -> prepare($sql);
$query-> bindParam(':subscriberemail', $subscriberemail, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{
echo "<script>alert('Already Subscribed.');</script>";
}
else{
$sql="INSERT INTO  tblsubscribers(SubscriberEmail) VALUES(:subscriberemail)";
$query = $dbh->prepare($sql);
$query->bindParam(':subscriberemail',$subscriberemail,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo "<script>alert('Subscribed successfully.');</script>";
}
else
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}
}
}
?>

<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-md-6">
          <h6>More Info</h6>
          <ul>
            <li><a href="about-us.php?type=aboutus">About Us</a></li>
            <li><a href="faqs.php?type=faqs">FAQs</a></li>
            <li><a href="about-us.php?type=privacy">Privacy Policy</a></li>
            <li><a href="about-us.php?type=terms">Terms and Conditions</a></li>
            <li><a target="_blank" href="admin/">Admin Login</a></li>
          </ul>
        </div>

        <div class="col-md-3 col-sm-6">
          <h6>SIGN UP FOR NEWSLETTER</h6>
          <div class="newsletter-form">
            <form method="post">
              <div class="form-group">
                <input type="email" name="subscriberemail" class="form-control newsletter-input" required placeholder="Enter your e-mail address" />
              </div>
              <button type="submit" name="emailsubscibe" class="btn btn-block">Subscribe Now<span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </form>
            <p class="subscribed-text">Our Subscribers get all the latest news.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-push-6 text-right">
          <div class="footer_widget">
            <p>Connect with us on:</p>
            <ul>
              <li><a target="_blank" href="https://bit.ly/bikerentalfb"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <li><a target="_blank" href="https://bit.ly/bikerentaltw"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
              <li><a target="_blank" href="https://bit.ly/bikerentalyt"><i class="fa fa-youtube-square" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-md-pull-6">
          <p class="copy-right">Copyright &copy; 2022 Online Bike Rental Portal. Brought To You By <a target=”_blank” href="https://bit.ly/3CieNzw">BSIT</a>.</p>
        </div>
      </div>
    </div>
  </div>
</footer>
