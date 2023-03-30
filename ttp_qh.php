<?php
   require_once "connect.php";
   $nttp = $_POST["nttp"];
   $result = mysqli_query($conn,"SELECT * FROM bangtinhtp,bangquanhuyen where bangtinhtp.TTPID=bangquanhuyen.TTPID and TenTinhTPh = '$nttp'");
?>
<option value="">Chọn quận huyện</option>
<?php
   while($row = mysqli_fetch_array($result)) {
?>
<option value="<?php echo $row["TenQuanHuyen"];?>"><?php echo $row["TenQuanHuyen"];?></option>
<?php
}