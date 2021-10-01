package com.cordovapluginopeninbrowser;

import org.apache.cordova.CordovaPlugin;
import org.json.JSONException;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaArgs;
import android.util.Log;
import android.net.Uri;
import android.content.Intent;

public class OpenInBrowser extends CordovaPlugin {
    /**
     * Executes the request and returns PluginResult.
     *
     * @param action the action to execute.
     * @param args JSONArry of arguments for the plugin.
     * @param callbackContext the callbackContext used when calling back into JavaScript.
     * @return A PluginResult object with a status and message.
     */
    public boolean execute(String action, CordovaArgs args, final CallbackContext callbackContext) throws JSONException {
        if (action.equals("open")) {
            try {
                final String url = args.getString(0);
                Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                this.cordova.getActivity().startActivity(browserIntent);
                return true;
            } catch (Exception e) {
                Log.d("OpenInBrowser", e.getMessage());
                return false;
            }
            
        } else {
            return false;
        }
        return true;
    }
}