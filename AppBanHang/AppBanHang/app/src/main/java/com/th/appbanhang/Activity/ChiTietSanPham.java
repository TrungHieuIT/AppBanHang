package com.th.appbanhang.Activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;

import com.squareup.picasso.Picasso;
import com.th.appbanhang.R;
import com.th.appbanhang.model.GioHang;
import com.th.appbanhang.model.Sanpham;

import java.text.DecimalFormat;

public class ChiTietSanPham extends AppCompatActivity {

    Toolbar toolbarChitiet;
    ImageView imgChitiet;
    TextView txtTen , txtGia , txtMota;
    Spinner spinner;
    Button btnDatMua;
    int id =0 ;
    String TenChiTiet ="";
    int GiaChiTiet =  0;
    String HinhAnhChiTiet ="";
    String MoTaChiTiet ="";
    int IdSanpham =0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chi_tiet_san_pham);
        Anhxa();
        AcitonToolBar();
        GetInformation(); //lay cac du lieu tu cac mang hinh khac
        CatchEventSpinner();//gioi han cho spinner tu 1 den 10
        EventButton();
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu,menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId())
        {
            case R.id.menugiohang:
                Intent intent = new Intent(getApplicationContext(),Giohang.class);
                startActivity(intent);
        }
        return super.onOptionsItemSelected(item);
    }

    private void EventButton() {
        btnDatMua.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(MainActivity.manggiohang.size() >0){
                    int sl = Integer.parseInt(spinner.getSelectedItem().toString());
                    boolean exists = false;

                    for (int i = 0 ; i < MainActivity.manggiohang.size();i++)
                    {

                        if(MainActivity.manggiohang.get(i).getIdsp() == id)
                        {
                            MainActivity.manggiohang.get(i).setSoluongsp(MainActivity.manggiohang.get(i).getSoluongsp()+sl);
                            if(MainActivity.manggiohang.get(i).getSoluongsp() >= 10)
                            {
                                MainActivity.manggiohang.get(i).setSoluongsp(10);
                            }
                            MainActivity.manggiohang.get(i).setGiasp(GiaChiTiet * MainActivity.manggiohang.get(i).getSoluongsp());
                            exists = true;
                        }
                    }
                    if(exists == false)
                    {
                        int soluong = Integer.parseInt(spinner.getSelectedItem().toString());
                        long Giamoi = soluong * GiaChiTiet;
                        MainActivity.manggiohang.add(new GioHang(id,TenChiTiet,Giamoi,HinhAnhChiTiet,soluong));
                    }
                }else
                {
                    int soluong = Integer.parseInt(spinner.getSelectedItem().toString());
                    long Giamoi = soluong * GiaChiTiet;
                    MainActivity.manggiohang.add(new GioHang(id,TenChiTiet,Giamoi,HinhAnhChiTiet,soluong));

                }
                Intent intent = new Intent(getApplicationContext(),Giohang.class);
                startActivity(intent);
            }
        });
    }

    private void CatchEventSpinner() {
        Integer [] soluong = new Integer[]{1,2,3,4,5,6,7,8,9,10};
        ArrayAdapter<Integer> arrayAdapter = new ArrayAdapter<Integer>(this,android.R.layout.simple_spinner_dropdown_item,soluong);
        spinner.setAdapter(arrayAdapter);

    }

    private void GetInformation() {

        Sanpham sanpham = (Sanpham) getIntent().getSerializableExtra("thongtinsanpham");
        id = sanpham.getID();
        TenChiTiet = sanpham.getTensanpham();
        GiaChiTiet = sanpham.getGiasanpham();
        HinhAnhChiTiet = sanpham.getHinhanhsanpham();
        MoTaChiTiet = sanpham.getMotasanpham();
        IdSanpham = sanpham.getIDSanpham();
        txtTen.setText(TenChiTiet);
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        txtGia.setText("Giá : "+ decimalFormat.format(sanpham.getGiasanpham())+ "Đ");
        txtMota.setText(MoTaChiTiet);
        Picasso.with(getApplicationContext()).load(HinhAnhChiTiet)
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(imgChitiet);
    }

    private void AcitonToolBar() {
        setSupportActionBar(toolbarChitiet);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbarChitiet.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }


    private void Anhxa() {
        toolbarChitiet = (Toolbar) findViewById(R.id.toolbarchitietsanpham);
        imgChitiet = (ImageView) findViewById(R.id.imageviewchitietsanpham);
        txtTen = (TextView) findViewById(R.id.textviewtenchitietsanpham);
        txtGia = (TextView) findViewById(R.id.textviewgiachitietsanpham);
        txtMota =  (TextView) findViewById(R.id.textviewmotachitietsanpham);
        spinner = (Spinner) findViewById(R.id.spinner);
        btnDatMua = (Button) findViewById(R.id.buttondatmua);
    }
}
