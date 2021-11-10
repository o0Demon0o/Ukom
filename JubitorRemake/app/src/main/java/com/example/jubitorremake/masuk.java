package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

public class masuk extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_masuk);

        Button login = findViewById(R.id.masuk);
        login.setOnClickListener(v -> openHome());
    }

    private void openHome() {
        Intent intent = new  Intent(masuk.this, halaman_utama.class);
        startActivity(intent);
    }

}