package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TableRow;

public class halaman_utama extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_halaman_utama);

        TableRow pajanganmotor1 = findViewById(R.id.pajanganmotor1);
        pajanganmotor1.setOnClickListener(v -> MethodDetailProduk());
    }

    private void MethodDetailProduk() {
        Intent intent = new  Intent(halaman_utama.this, detailproduct.class);
        startActivity(intent);
    }
}