<?php
include('connect.php');
class data
{
	public function add_form($hvt,$sdt,$tengau,$sizegau,$tinhtp,$quanhuyen,$phuongxa,$dcct)
	{
	global $conn;
	$sql="insert into form_gdgb (`HovaTen`, `Sdt`, `TenGau`, `SizeGau`, `TenTinhTPh`, `TenQuanHuyen`, `TenPhuongXa`, `DiaChiChiTiet`) value ('$hvt','$sdt','$tengau','$sizegau','$tinhtp','$quanhuyen','$phuongxa','$dcct')";
	$run=mysqli_query($conn,$sql);
	return $run;
	}

    public function list_form()
	{
		global $conn;
		$sql="select * from form_gdgb";
		$run=mysqli_query($conn,$sql);
		$data=array();
		while($rows=mysqli_fetch_array($run))
		{$data[]=$rows;}
        return $data;
	}

	public function select_form($id)
	{
		global $conn;
		$sql="select * from form_gdgb where FormId=$id";
		$run=mysqli_query($conn,$sql);
		$data=array();
		while($rows=mysqli_fetch_array($run))
		{$data[]=$rows;}
		return $data; 
	}

	public function delete_form($id)
	{
     global $conn;
     $sql="delete from form_gdgb where FormId=$id";
     $run= mysqli_query($conn,$sql);
     return $run;
	}

	public function update_form($hvt,$sdt,$tengau,$sizegau,$tinhtp,$quanhuyen,$phuongxa,$dcct,$Id)
	{
		global $conn;
		$sql="update form_gdgb SET HovaTen='$hvt',Sdt='$sdt',TenGau='$tengau',SizeGau='$sizegau',TenTinhTPh='$tinhtp',TenQuanHuyen='$quanhuyen',TenPhuongXa='$phuongxa',DiaChiChiTiet='$dcct' where FormId=$Id";
		$run=mysqli_query($conn,$sql);
		return $run;
	}
}
?>