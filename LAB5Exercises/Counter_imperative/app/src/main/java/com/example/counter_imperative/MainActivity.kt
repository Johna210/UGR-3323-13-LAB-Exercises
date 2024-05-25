package com.example.counter_imperative

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val tvCount = findViewById<TextView>(R.id.tvCount)
        val btnIncrement = findViewById<Button>(R.id.btnIncrement)
        val btnDecrement = findViewById<Button>(R.id.btnDecrement)
        val btnReset = findViewById<Button>(R.id.btnReset)

        btnIncrement.setOnClickListener {
            count++
            tvCount.text = count.toString()
        }

        btnDecrement.setOnClickListener {
            count--
            tvCount.text = count.toString()
        }

        btnReset.setOnClickListener {
            count = 0
            tvCount.text = count.toString()
        }
    }
}