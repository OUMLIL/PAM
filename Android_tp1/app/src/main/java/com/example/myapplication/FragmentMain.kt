package com.example.myapplication

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.navigation.findNavController
import androidx.navigation.fragment.NavHostFragment


class FragmentMain : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_blank, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        val button = view.findViewById<Button>(R.id.button)
        val editText = view.findViewById<EditText>(R.id.editTextTextPersonName)
        val text = view.findViewById<TextView>(R.id.textView)

        button.setOnClickListener { view ->
            view.findNavController().navigate(R.id.secondFragment)
            val input = editText.text
            text.text = input
            val duration = Toast.LENGTH_SHORT

            val toast = Toast.makeText(view.context, R.string.new_text, duration)
            toast.show()
            //val intent = Intent(view.context, Activity2::class.java)

            //startActivity(intent)
        }
    }
}