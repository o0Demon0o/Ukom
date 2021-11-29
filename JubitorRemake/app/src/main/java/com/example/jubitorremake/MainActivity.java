package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }

    public void MethodMasuk(View view) {
        Intent intent = new  Intent(getBaseContext(), masuk.class);
        startActivity(intent);
    }

    public void MethodDaftar(View view) {
        Intent intent = new  Intent(getBaseContext(), daftar.class);
        startActivity(intent);
    }
}