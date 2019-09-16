sudo apt-get install linux-headers-$(uname -r) build-essential git
git clone https://github.com/lwfinger/rtlwifi_new.git
cd rtlwifi_new/ && git checkout origin/extended -b extended
sudo make install
sudo modprobe -r rtl8723de

sudo modprobe rtl8723de
sudo apt purge bcmwl-kernel-source

sudo sed -i '/blacklist bcma/ d' /etc/modprobe.d/blacklist.conf

sudo sed -i '/blacklist brcmsmac/ d' /etc/modprobe.d/blacklist.conf
sudo modprobe -r rtl8723de && sleep 5 && sudo modprobe rtl8723de ant_sel=1
sudo modprobe -r rtl8723de && sleep 5 && sudo modprobe rtl8723de ant_sel=2
