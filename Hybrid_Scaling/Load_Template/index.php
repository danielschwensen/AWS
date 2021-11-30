<html>
<title> LA CLB DEMO </title>
<body>
<h1>
<center>
<h1>Las Vegas 2008</h1>
<IMG SRC="LV2008.jpg" ALT="Las Vegas 2008"><br>
<?php
$eip = file_get_contents('http://169.254.169.254/latest/meta-data/public-ipv4');
$az = file_get_contents('http://169.254.169.254/latest/meta-data/placement/availability-zone');
echo $eip;
echo $az;
?>
</center>
</h1>
</body>
</html>