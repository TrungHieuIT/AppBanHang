<?php
	include "connect.php";
	$page = $_GET['page'];
	$idsp = $_POST['idSanPham'];
	$space = 5;
	$limit = ($page - 1) * $space;
	$query = "SELECT * FROM SanPham WHERE idSanPham = $idsp LIMIT $limit, $space";
	$data = mysqli_query($conn,$query);
	$mangsanpham = array();
	while($row = mysqli_fetch_assoc($data))
	{
		array_push($mangsanpham, new Sanpham(
			$row['id'],
			$row['TenSanPham'],
			$row['GiaSanPham'],
			$row['HinhAnhSanPham'],
			$row['MoTaSanPham'],
			$row['idSanPham']));
	}
	echo json_encode($mangsanpham);
	class Sanpham {
		function Sanpham ($id,$tensp,$giasp,$hinhanhsp,$motasp,$idsanpham)
		{
			$this->id = $id;
			$this->tensp =$tensp;
			$this->giasp= $giasp;
			$this->hinhanhsp= $hinhanhsp;
			$this->motasp= $motasp;
			$this->idsanpham= $idsanpham;

		}
	}
?>