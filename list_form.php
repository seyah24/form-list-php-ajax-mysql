<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style1.css">
    <script type='text/javascript' src="public/bootstrap-3.3.7-dist/js/jquery-3.2.0.min.js"></script>
    <script type='text/javascript' src="public/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>List form</title>
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
</head>
<body>
<?php
include ('control.php');
$get_data= new data;
$ls_data=$get_data->list_form();
?>
<div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header clearfix">
                        <h2 class="text-center primary">List form</h2>
                        <a href="index.php" class="btn btn-primary pull-right">Form</a>
                        <a href="list_form.php" class="btn btn-primary pull-right active">List Form</a>
                    </div>
                </div>
            </div>        
        </div>
    </div>
</body>
    <table class="table primary_table">
    <tr>
        <th>ID</th>
        <th>Họ và tên</th>
        <th>Số điện thoại</th>
        <th>Tên gấu</th>
        <th>Size gấu</th>
        <th>Tỉnh Thành phố</th>
        <th>Quận Huyện</th>
        <th>Phường Xã</th>
        <th>Địa chỉ chi tiết</th>
        <th colspan="2">Option</th>
    </tr>
    <?php 
    foreach($ls_data as $se_form)
    {
        ?>
    <tr>
        <td><?php echo $se_form['FormId'];?></td>
        <td><?php echo $se_form['HovaTen'];?></td>
        <td><?php echo $se_form['Sdt'];?></td>
        <td><?php echo $se_form['TenGau'];?></td>
        <td><?php echo $se_form['SizeGau'];?></td>
        <td><?php echo $se_form['TenTinhTPh'];?></td>
        <td><?php echo $se_form['TenQuanHuyen'];?></td>
        <td><?php echo $se_form['TenPhuongXa'];?></td>
        <td><?php echo $se_form['DiaChiChiTiet'];?></td>
        <td><a href="edit_form.php?edit=<?php echo  $se_form['FormId'] ?>" >Edit</td>
        <td><a href="delete_form.php?del=<?php echo  $se_form['FormId'] ?>" >Delete</a></td>
    </tr>
    <?php } ?>
    </table>
</body>
</html>