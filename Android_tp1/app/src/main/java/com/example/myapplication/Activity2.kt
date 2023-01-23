package com.example.myapplication

import android.content.Intent
import android.os.Bundle
import android.provider.MediaStore
import androidx.appcompat.app.AppCompatActivity


class Activity2 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_2)
        val cameraIntent = Intent("android.media.action.IMAGE_CAPTURE")
        startActivity(cameraIntent)

    }
}