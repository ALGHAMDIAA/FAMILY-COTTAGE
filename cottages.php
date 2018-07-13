<?php
include 'hed.php';
?>
<!DOCTYPE html>
<html>
<title>bruern</title>

<style>
.mySlides {display:none}
.demo {cursor:pointer}
</style>
<body>
<?php
include ('base.php');
$q="select * from cottages where id=" . $_GET['m'];
$r=$conn->query($q);
while($rec=mysqli_fetch_assoc($r))
{
?>

<div class="w3-content" style="max-width:800px">
  <img class="mySlides" src="img/<?php echo $rec['p2']; ?>" style="width:100%">
  <img class="mySlides" src="img/<?php echo $rec['p3']; ?>" style="width:100%">
  <img class="mySlides" src="img/<?php echo $rec['p4']; ?>" style="width:100%">
  
  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="img/<?php echo $rec['p2']; ?>" style="width:100%" onclick="currentDiv(1)">
    </div>
  
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="img/<?php echo $rec['p3']; ?>" style="width:100%" onclick="currentDiv(2)">
    </div>
  
   
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="img/<?php echo $rec['p4']; ?>" style="width:100%" onclick="currentDiv(3)">
  </div>
  
</div>
<div class="w3-container">
    <button style="float: right; margin-top:10px;" class="btn-info" type="button"> £<?php echo $rec['price']; ?> per week</button>
  <h2><?php echo $rec['name']; ?></h2>
  <hr/>
   <p><?php echo $rec['title']; ?></p>
  <div><p><?php 
 $d=$rec['description'];
 $len=strlen($d);
 //echo $len;
 $cutoff=$len/3;
 //echo "cutoff".$cutoff;
 $fp=strpos($d,".",$cutoff)+1;
// echo "fp".$fp;
 $sp=strpos($d,".",$cutoff*2)+1;
// echo "sp".$sp;
 echo substr($d,0,$fp); ?>
 </p>
    <p><?php echo substr($d,$fp,$sp-$fp); ?></p>
       <p><?php echo substr($d,$sp,$len-$sp); ?></p>
    </div>
    <hr/>
  <img src="img/<?php echo $rec['location_map']; ?>" style="width:100%">
     <a style="float: right; margin-top:10px;" class="btn btn-primary" href="https://www.sandbox.paypal.com/us/home" role="button" >Book Now</a>
</div>
</div>


<?php } ?>

<?php
include 'footer.php';
?>
    
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>

</body>
</html>
