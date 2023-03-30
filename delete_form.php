<?php 
    $id=$_GET['del']; echo $id;
    include ('control.php');
    $get_data= new data();
    $delform=$get_data->delete_form($id);
    if($delform) header('location:list_form.php');
    else echo "không thành công";
?>
