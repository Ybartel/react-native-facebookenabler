
package com.reactlibrary;

import android.content.Context;
import android.content.SharedPreferences;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNFacebookEnableModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;
  private final static String sharedPrefsFile = "com.reactlibrary.micropole.facebookEnable";
  private final static String sharedPrefsKey = "fb_enabled";

  public RNFacebookEnableModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNFacebookEnable";
  }

  @ReactMethod
  public void setEnabler(boolean value) {
    SharedPreferences prefs = getSharedPreferencesForModule();
    SharedPreferences.Editor editor = prefs.edit();

    editor.putBoolean(sharedPrefsKey, value);
    editor.apply();
  }

  @ReactMethod
  public void isEnabled(Callback successCallBack) {
    SharedPreferences prefs = getSharedPreferencesForModule();
    successCallBack.invoke(prefs.getBoolean(sharedPrefsKey, false));
  }

  @ReactMethod
  public void hasValue(Callback successCallBack) {
    SharedPreferences prefs = getSharedPreferencesForModule();
    successCallBack.invoke(prefs.contains(sharedPrefsKey));
  }

  private SharedPreferences getSharedPreferencesForModule() {
    return reactContext.getSharedPreferences(sharedPrefsFile, Context.MODE_PRIVATE);
  }
}