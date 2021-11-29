package com.example.jubitorremake;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;


import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;

import java.util.List;


import com.example.jubitorremake.adapter.HomeAdapter;
import com.example.jubitorremake.modal.GetMenu;
import com.example.jubitorremake.modal.Menu;
import com.example.jubitorremake.rest.ApiClient;
import com.example.jubitorremake.rest.ApiInterface;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class halaman_utama extends AppCompatActivity {

    ImageButton set;

    ApiInterface api;
    private RecyclerView recyclerView;
    private RecyclerView.Adapter adapter;
    private RecyclerView.LayoutManager layoutManager;
    public static halaman_utama ma;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_halaman_utama);

        recyclerView = findViewById(R.id.homeRecycler);
        layoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(layoutManager);
        api = ApiClient.getClient().create(ApiInterface.class);
        ma = this;
        panggilRetrofit();

        set = findViewById(R.id.setting);
        set.setOnClickListener(v -> openSetting());
    }

    private void openSetting() {
        Intent s = new Intent(halaman_utama.this, setting.class);
        startActivity(s);
        finish();
    }


    private void panggilRetrofit() {
        Call<GetMenu> MenuCall = api.getMenu();
        MenuCall.enqueue(new Callback<GetMenu>() {
            @Override
            public void onResponse(Call<GetMenu> call, Response<GetMenu>
                    response) {
                List<Menu> MenuList = response.body().getData();
                Log.d("Retrofit Get", "Jumlah data Kontak: " +
                        String.valueOf(MenuList.size()));
                adapter = new HomeAdapter(MenuList);
                recyclerView.setAdapter(adapter);
            }

            @Override
            public void onFailure(Call<GetMenu> call, Throwable t) {
                Log.e("Retrofit Get", t.toString());
            }
        });
    }
}