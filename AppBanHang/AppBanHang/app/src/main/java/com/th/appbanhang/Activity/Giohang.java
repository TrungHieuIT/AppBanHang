package com.th.appbanhang.Activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

import com.th.appbanhang.R;
import com.th.appbanhang.adapter.GioHangAdapter;
import com.th.appbanhang.ultil.CheckConnection;

import java.text.DecimalFormat;

public class Giohang extends AppCompatActivity {

    ListView lvGioHang;
    TextView txtThongBao;
    static TextView txtTongTien;
    Button btnThanhToan , btnTiepTucMua;
    Toolbar toolbargiohang;
    GioHangAdapter gioHangAdapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_giohang);
        Anhxa();
        ActionToolBar();
        CheckData();
        EventUltil();
        CatchOnItemListView();
        EventButton();

    }

    private void EventButton() {
        btnTiepTucMua.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
            }
        });
        btnThanhToan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (MainActivity.manggiohang.size() > 0)
                {
                    Intent intent = new Intent(getApplicationContext(),ThongTinKhachHang.class);
                    startActivity(intent);
                }else
                {
                    CheckConnection.ShowToast_Short(getApplicationContext(),"Giỏ hàng của bạn chưa có sản phẩm nào để thanh toán ");

                }
            }
        });
    }

    private void CatchOnItemListView() {
        lvGioHang.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, final int position, long id) {
                AlertDialog.Builder builder = new AlertDialog.Builder(Giohang.this);
                builder.setTitle("Xác nhận xoá sản phẩm ");
                builder.setMessage("Bạn có chắc muốn xoá sản phẩm này");
                builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if(MainActivity.manggiohang.size() <= 0)
                        {
                            txtThongBao.setVisibility(View.VISIBLE);

                        }
                        else {
                            MainActivity.manggiohang.remove(position);
                            gioHangAdapter.notifyDataSetChanged();
                            EventUltil();
                            if(MainActivity.manggiohang.size() <=0)
                            {
                                txtThongBao.setVisibility(View.VISIBLE);
                            }else {
                                 txtThongBao.setVisibility(View.INVISIBLE);
                                gioHangAdapter.notifyDataSetChanged();
                                EventUltil();
                            }
                        }
                    }
                });
                builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        gioHangAdapter.notifyDataSetChanged();
                        EventUltil();
                    }
                });
                builder.show();
                return true;
            }
        });
    }

    public static void EventUltil() {
        long tongtien =0 ;
        for (int i =0 ; i <MainActivity.manggiohang.size();i++)
        {
            tongtien += MainActivity.manggiohang.get(i).getGiasp();
        }
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        txtTongTien.setText(decimalFormat.format(tongtien) +"Đ");
    }

    private void CheckData() {
        if(MainActivity.manggiohang.size() <=0)
        {
            gioHangAdapter.notifyDataSetChanged();
            txtThongBao.setVisibility(View.VISIBLE);
            lvGioHang.setVisibility(View.INVISIBLE);
        }
        else
        {
            gioHangAdapter.notifyDataSetChanged();
            txtThongBao.setVisibility(View.INVISIBLE);
            lvGioHang.setVisibility(View.VISIBLE);
        }
    }

    private void ActionToolBar() {
        setSupportActionBar(toolbargiohang);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbargiohang.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }

    private void Anhxa() {
        lvGioHang = (ListView)findViewById(R.id.listviewgiohang);
        txtThongBao = (TextView)findViewById(R.id.textviewthongbao);
        txtTongTien = (TextView)findViewById(R.id.textviewtongtien);
        btnThanhToan = (Button) findViewById(R.id.buttonthanhtoangiohang);
        btnTiepTucMua = (Button) findViewById(R.id.buttontieptucmuahang);
        toolbargiohang =(Toolbar) findViewById(R.id.toolbargiohang);
        gioHangAdapter = new GioHangAdapter(Giohang.this,MainActivity.manggiohang);
        lvGioHang.setAdapter(gioHangAdapter);
    }
}
