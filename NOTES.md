# Supercollider

Ctrl + D to quit slang


---


# Pulse Audio

- start pulse audio on host machine

### Mac

- install from brew
- edit `default.pa` file
    - file location can be found from `pulseaudio --dump-conf`, see `default-script-file` value
    - change line `#load-module module-native-protocol-tcp` to `load-module module-native-protocol-tcp listen=0.0.0.0 auth-anonymous=1`
    - restart pulseaudio


---


Sometimes the installation fails and you just gotta do it again.

