<?php 
	include "connect.php"; 

	$json = $_POST['json'];

	$data = json_decode($json,true);

	foreach ($data as $value) {
		$madonhang = $value['madonhang'];
		$masanpham = $value['masanpham'];
		$tensanpham = $value['tensanpham'];
		$giasanpham = $value['giasanpham'];
		$soluongsanpham = $value['soluongsanpham'];
		$query = "INSERT INTO `Chitietdonhang`(`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES (null,'$madonhang','$masanpham','$tensanpham','$giasanpham','$soluongsanpham')";
		
		$Dta = mysqli_query($conn,$query);
	}
	if ($Dta)
		echo "1";
	else
		echo "0";
		

?>
<!--'[{"madonhang":2,"masanpham":1,"tensanpham":"Điện thoại iPhone 8 Plus 256GB","giasanpham":25790000,"soluongsanpham":17},{"madonhang":2,"masanpham":2,"tensanpham":"Điện thoại iPhone X 256GB","giasanpham":27990000,"soluongsanpham":1}]';-->