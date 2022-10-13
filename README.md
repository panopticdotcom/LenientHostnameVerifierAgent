# Disable hostname verification for HttpsURLConnection requests

While disabling hostname verification significantly reduces security,
sometimes you have no other option than to do it.

For example, when you get the following exception:

`javax.net.ssl.SSLHandshakeException: No subject alternative DNS name
matching <FQDN> found.`

## Building

```shell
$ make
```

This should produce `dist/LenientHostnameVerifierAgent.jar`, which is
already included in this repository for convenience.

## Usage

```shell
$ java -javaagent:LenientHostnameVerifierAgent.jar \
       -jar YourJarFile.jar
```

## Credits

The code in
[src/LenientHostnameVerifierAgent.java](./src/LenientHostnameVerifierAgent.java)
was taken from the following page:

https://stackoverflow.com/questions/6031258/java-ssl-how-to-disable-hostname-verification

Thank you, [Vadzim](https://stackoverflow.com/users/603516/vadzim).

## Licensing

This project is licensed under the terms of the MIT license.

Code taken from Stack Overflow is
[licensed](https://stackoverflow.com/help/licensing)
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
