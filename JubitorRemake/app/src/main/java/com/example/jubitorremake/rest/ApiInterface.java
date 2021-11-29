package com.example.jubitorremake.rest;

import com.example.jubitorremake.modal.GetMenu;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface ApiInterface {

    @GET ("api/menu")
    Call<GetMenu> getMenu();

    @POST ("api/loginpelanggan")
    Call<LoginResponse> loginuser(@Body LoginRequest loginRequest);

    @GET ("authenticate")
    Call<RegisterResponse> registeruser(@Body RegisterRequest registerRequest);

}
