package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class daftar extends AppCompatActivity {


    Button explicit_btn, implicit_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_daftar);

    }

    public void MethodMasuk(View view) {
        Intent intent = new  Intent(getBaseContext(), masuk.class);
        startActivity(intent);
    }
}