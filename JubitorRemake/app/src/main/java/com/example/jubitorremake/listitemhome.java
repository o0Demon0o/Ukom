package com.example.jubitorremake;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

public class listitemhome extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.listitem_produkhome);

    }

    public void MethodHubungi(View view) {
        Intent intent = new  Intent(getBaseContext(), detailproduct.class);
        startActivity(intent);
    }
}
