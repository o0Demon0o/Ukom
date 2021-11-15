package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TableRow;

public class favorit extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_favorit);

        TableRow pajanganmotor1 = findViewById(R.id.motorfavorit1);
        pajanganmotor1.setOnClickListener(v -> MethodDetailPrdk());
    }

    private void MethodDetailPrdk() {
        Intent intent = new  Intent(favorit.this, detailproduct.class);
        startActivity(intent);
    }
}