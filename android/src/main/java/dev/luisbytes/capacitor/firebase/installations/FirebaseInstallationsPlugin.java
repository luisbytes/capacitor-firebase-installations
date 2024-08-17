package dev.luisbytes.capacitor.firebase.installations;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import com.google.firebase.installations.FirebaseInstallations;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

import androidx.annotation.NonNull;

@CapacitorPlugin(name = "FirebaseInstallations")
public class FirebaseInstallationsPlugin extends Plugin {

  @PluginMethod()
  public void getId(PluginCall call) {
    FirebaseInstallations.getInstance().getId()
      .addOnCompleteListener(new OnCompleteListener<String>() {
        @Override
        public void onComplete(@NonNull Task<String> task) {
          if (task.isSuccessful()) {
            JSObject ret = new JSObject();
            ret.put("id", task.getResult());
            call.resolve(ret);
          } else {
            call.reject("Id not found");
          }
        }
      });
  }

}
