package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class tokosaya extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tokosaya);
    }

    public void MethodMenu(View view) {
        Intent intent = new  Intent(getBaseContext(), setting.class);
        startActivity(intent);
    }
}