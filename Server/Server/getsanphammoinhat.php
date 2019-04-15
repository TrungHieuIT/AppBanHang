<?php
		include "connect.php";
	$query = "SELECT * FROM SanPham ORDER BY ID DESC LIMIT 6";
	$data = mysqli_query($conn,$query);
	$mangspmoinhat = array();
	while($row = mysqli_fetch_assoc($data))
	{
		array_push($mangspmoinhat, new Sanphammoinhat(
			$row['id'],
			$row['TenSanPham'],
			$row['GiaSanPham'],
			$row['HinhAnhSanPham'],
			$row['MoTaSanPham'],
			$row['idSanPham']));
	}
	echo json_encode($mangspmoinhat);
	class Sanphammoinhat {
		function Sanphammoinhat ($id , $tensp,$giasp,$hinhanhsp,$motasp,$idsanpham)
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