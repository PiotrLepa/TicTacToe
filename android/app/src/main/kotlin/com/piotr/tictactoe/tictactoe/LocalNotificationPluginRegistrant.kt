package com.piotr.tictactoe.tictactoe

import android.util.Log
import com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin
import io.flutter.plugin.common.PluginRegistry

object LocalNotificationPluginRegistrant {

    fun registerWith(registry: PluginRegistry) {
        if (alreadyRegisteredWith(registry)) {
            return
        }
        FlutterLocalNotificationsPlugin.registerWith(
                registry.registrarFor(
                        "com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin"
                )
        )
        Log.d("Local Plugin", "Registered");
    }

    private fun alreadyRegisteredWith(registry: PluginRegistry): Boolean {
        val key = LocalNotificationPluginRegistrant::class.java.canonicalName
        if (registry.hasPlugin(key)) {
            return true
        }
        registry.registrarFor(key)
        return false
    }
}