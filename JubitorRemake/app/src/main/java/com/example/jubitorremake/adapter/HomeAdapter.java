package com.example.jubitorremake.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.jubitorremake.R;
import com.example.jubitorremake.modal.Menu;

import java.util.List;

public class HomeAdapter extends RecyclerView.Adapter<HomeAdapter.ViewHolder> {

    List<Menu> MenuList;

    public HomeAdapter(List <Menu> MenuList){this.MenuList = MenuList;}

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.listitem_produkhome, parent, false);
        ViewHolder vViewHolder = new ViewHolder(v);
        return vViewHolder;
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        holder.tvNama.setText(MenuList.get(position).getMenu());

    }

    @Override
    public int getItemCount() {
        return MenuList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder{
        TextView tvNama;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            tvNama = itemView.findViewById(R.id.tvNamaProduk);
        }
    }
}
