<?php 
include_once 'connect.php';

if (isset($_POST['ttp'])) {
	$query = "SELECT * FROM bangtinhtp,bangquanhuyen where bangtinhtp.TTPID=bangquanhuyen.TTPID and 'TenTinhTPh' = ".$_POST['ttp'];
	$record = mysqli_query($conn, $query);
	if ($record->num_rows > 0 ) {
			echo '<option value="">Chọn quận huyện</option>';
		 while ($row = $record->fetch_assoc()) {
		 	echo '<option value='.$row['TenQuanHuyen'].'>'.$row['TenQuanHuyen'].'</option>';
		 }
	}else{

		echo '<option>Không có dữ liệu!</option>';
	}

}elseif (isset($_POST['qh'])) {

	$query = "SELECT * FROM bangquanhuyen,bangphuongxa where bangquanhuyen.TTPID=bangphuongxa.TTPID and bangquanhuyen.QHID=bangphuongxa.QHID and 'TenQuanHuyen' = ".$_POST['qh'];
	$record = mysqli_query($conn, $query);
	if ($record->num_rows > 0 ) {
			echo '<option value="">Chọn phường xã</option>';
		 while ($row = $record->fetch_assoc()) {
		 	echo '<option value='.$row['TenQuanHuyen'].'>'.$row['TenPhuongXa'].'</option>';
		 }
	}else{

		echo '<option>Không có dữ liệu!</option>';
	}

}


?>