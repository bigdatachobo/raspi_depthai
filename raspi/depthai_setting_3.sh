# 위 코드가 잘 실행되면 아래 코드로 진행
cd /home/pi
sudo git clone https://github.com/luxonis/depthai.git /home/pi
cd /home/pi/depthai
sudo python3 install_requirements.py
cd /home/pi/
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="03e7", MODE="0666"' | sudo tee /etc/udev/rules.d/80-movidius.rules
sudo udevadm control --reload-rules && sudo udevadm trigger

# 설치 확인 예제 코드
sudo git clone https://github.com/luxonis/depthai-experiments.git /home/pi
sudo python3 -m pip install depthai-sdk
sudo python3 -m pip install --extra-index-url https://www.piwheels.org/simple/ depthai-sdk

# Cortic Technology Python Script Demos
sudo apt-get install freeglut3-dev
sudo pip3 install pywavefront
sudo pip3 install PyOpenGL
sudo pip3 install pygame_gui -U
sudo apt install libsdl2-ttf-2.0-0
sudo pip3 install pywavefront
sudo git clone https://github.com/cortictechnology/vision_ui.git /home/pi/
sudo git clone https://github.com/cortictechnology/heartrate_estimation.git /home/pi/
