package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


public class setting extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_setting);

    }

    public void MethodtokoSaya(View view) {
        Intent intent = new  Intent(getBaseContext(), tokosaya.class);
        startActivity(intent);
    }

    public void Methodhistory(View view) {
        Intent intent = new  Intent(getBaseContext(), history.class);
        startActivity(intent);
    }

    public void MethodAkun(View view) {
        Intent intent = new  Intent(getBaseContext(), MainActivity.class);
        startActivity(intent);
    }
}