package com.example.myapplication

import android.content.Intent
import android.graphics.Insets.add
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.commit
import androidx.navigation.fragment.NavHostFragment


class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

    }

    override fun onStart() {
        super.onStart()
        Log.d("ActivityMain", "OnStart")
    }

    override fun onResume() {
        super.onResume()
        Log.d("ActivityMain", "OnResume")
    }

    override fun onPause() {
        super.onPause()
        Log.d("ActivityMain", "OnPause")
    }

    override fun onRestart() {
        super.onRestart()
        Log.d("ActivityMain", "OnRestart")
    }

    override fun onStop() {
        super.onStop()
        Log.d("ActivityMain", "OnStop")
    }

}