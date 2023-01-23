package com.example.myapplication

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Adapter
import android.widget.Button
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class SecondFragment : Fragment() {

    private var recyclerView: RecyclerView? = null
    private var my_adapter: CustomAdapter? = null
    //private var my_array = mutableListOf<String>("str1", "str2", "str3", "str4", "str5")
    private var model: MyViewModel? = null

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_second, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
       // val cameraIntent = Intent("android.media.action.IMAGE_CAPTURE")
       // startActivity(cameraIntent)

        val button = view.findViewById<Button>(R.id.button3)

        button.setOnClickListener { view ->
            model?.addData(System.nanoTime().toString())
            // my_adapter?.notifyItemInserted(my_array.size)
            // my_adapter?.notifyDataSetChanged()
        }
        recyclerView = view.findViewById(R.id.recycler_view)
        recyclerView?.layoutManager = LinearLayoutManager(activity)

        model = ViewModelProvider(this).get(MyViewModel::class.java)
        my_adapter = model?.getData()?.value?.let { CustomAdapter(it) }
        recyclerView?.adapter = my_adapter

        model?.getData()?.observe(viewLifecycleOwner, Observer {
            my_adapter?.notifyDataSetChanged()
        })
    }
}


// add a recycler view to the secondfragment
// create the cell: new layout -> cellule
// creer l'Adapter

// return screen -> recreates everything