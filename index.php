
<?php
$link = mysql_connect('mysql', 'root', 'TM1q2w3e.');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);
?>

