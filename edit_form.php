<?php
require ('control.php');
ob_start();
$id=$_GET['edit'];
$get_data= new data();
$select_form=$get_data->select_form($id);
 foreach($select_form as $se_form)
{
	
 }
?>
<!DOCTYPE HTML>
<html>
<meta charset="UTF-8">
    <title>Edit Form</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style1.css">
    <script type='text/javascript' src="public/bootstrap-3.3.7-dist/js/jquery-3.2.0.min.js"></script>
    <script type='text/javascript' src="public/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .wrapper{
            width: 80%;
            margin: 0 auto;
        }
        .page-header h2{
            margin-top: 0;
        }
        table tr td:last-child a{
            margin-right: 15px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>
<body>
<div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header clearfix">
                        <h2 class="text-center primary">Form</h2>
                        <a href="index.php" class="btn btn-primary pull-right">Form</a>
                        <a href="list_form.php" class="btn btn-primary pull-right">List Form</a>
						<a href="edit_form.php" class="btn btn-primary pull-right active">Edit Form</a>
                    </div>
<div class="content">
    <table style="width:100%">
      <tr>
        <th><div class="polaroid"><img src="img/giadinhgaubonglogo.jpg" alt="Gia dinh gau bong" style="width:50px"></div></th>
        <th><h2 style="text-align:center;font-size: 20px;width:100%"><b>Gia đình gấu bông</b></h2></th>
        <th style="text-align:right;width:13%"><a href="list_form.php">&#10006;</a></th>
    </tr>
        </table style="width:100%">    
        <br>
        <hr class="line1">
        <form method="post" enctype="multipart/form-data">
            <p><b>Họ và Tên:</b></p>
            <input type="text" id="hvt" name="hvt" class="textbox" value="<?php echo $se_form['HovaTen'];?>" placeholder="Nhập họ và tên"><br>
            <p><b>Số điện thoại:</b></p>
            <input type="text" id="sdt" name="sdt" class="textbox" value="<?php echo $se_form['Sdt'];?>" placeholder="Nhập số điện thoại">
            <p><b>Tên gấu:</b></p>
            <input type="text" id="tengau" name="tengau" class="textbox" value="<?php echo $se_form['TenGau'];?>"placeholder="Nhập tên gấu">
            <p><b>Size gấu:</b></p>
            <input type="text" id="sizegau" name="sizegau" class="textbox" value="<?php echo $se_form['SizeGau'];?>" placeholder="Nhập size gấu">
            <p><b>Địa chỉ:</b></p>
            <select class="btn btn-default dropdown-toggle" name="tinhtp" id="tinhtp">
                <option value=""><?php echo $se_form['TenTinhTPh'];?></option>
                <option value="">Chọn tỉnh thành phố</option>
                <?php
                        include_once "connect.php"; 
                        $query="SELECT * From bangtinhtp Order by TenTinhTPh";
                        $record = mysqli_query($conn, $query);
                        while($row=mysqli_fetch_array($record)){
                            ?>
                            <option value="<?php echo $row['TenTinhTPh'];?>"><?php echo $row["TenTinhTPh"];?></option>
                            <?php
                        }
                        ?>
            </select>                    
                <select class="btn btn-default dropdown-toggle" id="quanhuyen" name="quanhuyen" <?php echo $se_form['TenQuanHuyen'];?>>
                    <option value=""><?php echo $se_form['TenQuanHuyen'];?></option>
                </select>
                
                <select class="btn btn-default dropdown-toggle" id="phuongxa" name="phuongxa" <?php echo $se_form['TenPhuongXa'];?>>
                    <option value=""><?php echo $se_form['TenPhuongXa'];?></option>
                </select>
            
                    
            <p><b>Địa chỉ chi tiết:</b></p>
            <input type="text" id="dcct" name="dcct" class="textbox" value="<?php echo $se_form['DiaChiChiTiet'];?>" placeholder="Nhập địa chỉ chi tiết">
            <h1></h1>
            <button class="button buttonblue" name="sharebutton" type="button" href="#" style="width: 29%;"><i class="fa fa-share-alt"></i><br>Chia sẻ</button>
            <button class="buttonlarge buttonred" name="submitbutton" type="submit"style="width: 69%;"><i class="fa fa-check"></i><br>Xác nhận</button>
        </form>
        
                    </div>
                </div>
            </div>        
        </div>
    </div>

    <script>
$(document).ready(function() {
   $('#tinhtp').on('change', function() {
      var nttp = this.value;
      $.ajax({
         url: "ttp_qh.php",
         type: "POST",
         data: {
            nttp: nttp
         },
         cache: false,
         success: function(result){
            $('#quanhuyen').html(result);
            $('#phuongxa').html('<option value="">Chọn quận huyện trước</option>'); 
         }
      });
   });    
   $('#quanhuyen').on('change', function() {
      var nqh = this.value;
      $.ajax({
         url: "qh_px.php",
         type: "POST",
         data: {
            nqh: nqh
         },
         cache: false,
         success: function(result){
            $("#phuongxa").html(result);
         }
      });
   });
});
</script>

<?php
  if(isset($_POST['submitbutton']))
  { 
    if(empty($_POST['hvt']))
    {    echo "<script>alert('Phải điền nội dung vào');</script>";}
     else
    {
      $up=$get_data->update_form($_POST['hvt'],$_POST['sdt'],$_POST['tengau'],$_POST['sizegau'],$_POST['tinhtp'],$_POST['quanhuyen'],$_POST['phuongxa'],$_POST['dcct'],$id);
      if($up) 
      header ('location:list_form.php');
      else echo "<script>alert('Sửa không thành công');</script>";
  } 
}  

?>
</body>
</html>
