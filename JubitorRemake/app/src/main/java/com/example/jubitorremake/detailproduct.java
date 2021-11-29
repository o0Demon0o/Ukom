package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;

public class detailproduct extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detailproduct);

    }

    private void MethodHubungi() {
        Intent intent = new  Intent(detailproduct.this, halaman_utama.class);
        startActivity(intent);
    }
}