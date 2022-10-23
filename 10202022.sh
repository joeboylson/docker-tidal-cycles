export DISPLAY=:0
Xvfb :0 -screen 0 1024x768x16 &


rm -rf ansible-tidalcycles
git clone --recurse-submodules https://github.com/cleary/ansible-tidalcycles.git


cd ansible-tidalcycles
sudo ansible-playbook --connection=local -i localhost, tidal.play.yml


export $(dbus-launch)
jack_control start


export DISPLAY=:0
Xvfb :0 -screen 0 1024x768x16 &
