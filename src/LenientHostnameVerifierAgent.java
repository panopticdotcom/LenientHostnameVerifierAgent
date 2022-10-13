/**
 * This code below was taken from the following page:
 *
 * https://stackoverflow.com/questions/6031258/java-ssl-how-to-disable-hostname-verification
 *
 * Thank you, [Vadzim](https://stackoverflow.com/users/603516/vadzim).
 */

import javax.net.ssl.*;
import java.lang.instrument.Instrumentation;

public class LenientHostnameVerifierAgent {
    public static void premain(String args, Instrumentation inst) {
        HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier() {
            public boolean verify(String s, SSLSession sslSession) {
                return true;
            }
        });
    }
}
