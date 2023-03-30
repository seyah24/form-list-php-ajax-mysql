<?php
require_once "connect.php";
$nqh = $_POST["nqh"];
$result = mysqli_query($conn,"SELECT * FROM bangquanhuyen,bangphuongxa where bangquanhuyen.TTPID=bangphuongxa.TTPID and bangquanhuyen.QHID=bangphuongxa.QHID and 'TenQuanHuyen' = '$nqh'");
?>
<option value="">Chọn phường xã</option>
<?php
while($row = mysqli_fetch_array($result)) {
?>
<option value="<?php echo $row["TenPhuongXa"];?>"><?php echo $row["TenPhuongXa"];?></option>
<?php
}
?>

<?php
require_once "connect.php";
$nttp = $_POST["nttp"];
$result = mysqli_query($conn,"SELECT * FROM bangtinhtp,bangquanhuyen where bangtinhtp.TTPID=bangquanhuyen.TTPID and 'TenTinhTPh' = '$nttp'");
?>
<option value="">Chọn quận huyện</option>
<?php
while($row = mysqli_fetch_array($result)) {
?>
<option value="<?php echo $row["TenQuanHuyen"];?>"><?php echo $row["TenQuanHuyen"];?></option>
<?php
}
?>
