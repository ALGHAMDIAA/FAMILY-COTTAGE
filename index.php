<?php
include 'hed.php';
?>
      <div class="container">
  <h2 class="text-center" style="margin: 25px">Find your dream holiday today</h2>
  <p>Bubbling hot tub retreats nestled deep in the forest to quirky beach huts with stunning sea views. Escape to a beautiful cottage, stunning barn, or hop aboard a stylish boat. Whatever your idea of holiday heaven is, our choice is unrivalled.</p>
  <p><strong>We’re proud of our heritage and we’ve grown a lot over the past 70 years. Here’s a little bit more about our journey and our guide to some of the best places to visit in the UK.</p>

  <div class="card-deck"  >
  <?php 
  include ('base.php');
$q="select * from cottages";
$r=$conn->query($q);
$c=0;
while(($rec=mysqli_fetch_assoc($r)))
{
$c++;
  ?>
    <div class="card bg-light">
      <div class="card-body text-center">
	          <img src="img/<?php echo $rec['p1']; ?>" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
        <p class="card-text"><?php echo $rec['title'] ?></p>
        <a href="cottages.php?m=<?php echo $rec['id'] ?>" class="btn btn-primary"><?php echo $rec['name']?></a>
      </div>
    </div>
    <?php
	if(($c%3)==0)
	echo "</div><p></p><div class='card-deck'>";
	} ?>
	</div>
</div>

 <?php
    include 'footer.php';
    ?>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
