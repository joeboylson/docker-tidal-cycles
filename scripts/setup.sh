export DISPLAY=:0

sudo apt-get install xvfb -y
sudo apt-get install ansible git -y

git clone --recurse-submodules https://github.com/cleary/ansible-tidalcycles.git
cd ansible-tidalcycles/

sudo ansible-playbook --connection=local -i localhost, tidal_atom.play.yml
