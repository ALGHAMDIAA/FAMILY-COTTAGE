<?php
include ('hed.php');
//include ('search.html');
?>
<div class="container">
<?php
include ('base.php');
if($_POST)
{
if(!empty($_POST['searchtext']))
{
$st=$_POST['searchtext'];
$q="select * from cottages where name like '%" . $st ."%' or title like '%" . $st . "%' or description like '%" . $st . "%' order by name";
$r=$conn->query($q);
while($rec=mysqli_fetch_assoc($r))
{
echo "<div>";

echo $rec['name'];
echo "<br/>";

echo "<img src='img/";
echo $rec['p1'];
echo "'/>";

echo "<p>";
echo substr($rec['description'],0,100);
echo ".....";
echo "<a href='cottages.php?m=";
echo $rec['id'];
echo "'>";
echo "read more";
echo "</a>";
echo "</p>";
echo "</div>";



}}
else
  echo "No text available to search";  
}
else 
    echo "No text available to search";
 ?>
</div>
<?php
include ('footer.php');
?>