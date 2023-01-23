package com.example.myapplication

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class CustomAdapter (private val dataSet: MutableList<String>) :
    RecyclerView.Adapter<CustomAdapter.ViewHolder>() {

        /**
         * Provide a reference to the type of views that you are using
         * (custom ViewHolder)
         */
        // stock les pointeurs vers différents elements
        class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
            val textView: TextView
            init {
                // Define click listener for the ViewHolder's View
                textView = view.findViewById(R.id.textView)
            }
        }

        // Create new views (invoked by the layout manager)
        // kaysayab dik view li qadina jdida f layout
        override fun onCreateViewHolder(viewGroup: ViewGroup, viewType: Int): ViewHolder {
            // Create a new view, which defines the UI of the list item
            val view = LayoutInflater.from(viewGroup.context)
                .inflate(R.layout.text_row_item, viewGroup, false)
            return ViewHolder(view)
        }

        // Replace the contents of a view (invoked by the layout manager)
        // takes data passed in parameter and puts it in the text
        override fun onBindViewHolder(viewHolder: ViewHolder, position: Int) {

            // Get element from your dataset at this position and replace the
            // contents of the view with that element
            //viewHolder.textView.text = dataSet.[position]
            viewHolder.textView.text = dataSet?.get(position)
        }

        // Return the size of your dataset (invoked by the layout manager)
        override fun getItemCount() = dataSet.size
}