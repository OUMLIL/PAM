package com.example.myapplication

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel


class MyViewModel : ViewModel() {

    private var data : MutableLiveData<MutableList<String>> = MutableLiveData()

    fun getData(): MutableLiveData<MutableList<String>> {
        if(data.value == null) {
            data.value = mutableListOf<String>("str1", "str2", "str3", "str4", "str5")
        }
        return data
    }

    fun addData(newString: String) {
        data.value?.add(newString)
        data.value = data.value //
    }


}