#!/bin/bash
# coding:UTF-8
apt-get install rlwrap
mkdir SH
cd SH
wget "https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh" -O LinEnum.sh
wget "https://github.com/diego-treitos/linux-smart-enumeration/raw/master/lse.sh" -O LinEnumPlus.sh
wget "https://raw.githubusercontent.com/Adlemann/linPE/master/linpe.sh" -O LinPe.sh
cd ..
mkdir ELF
cd ELF
wget "https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32" -O pspy32
wget "https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64" -O pspy64
cd ..
mkdir KERNALS
cd KERNALS
wget "https://raw.githubusercontent.com/kkamagui/linux-kernel-exploits/master/kernel-4.4.0-31-generic/CVE-2016-5195/compile.sh" -O NaughtyCowCompile.sh
wget "https://raw.githubusercontent.com/kkamagui/linux-kernel-exploits/master/kernel-4.4.0-31-generic/CVE-2016-5195/naughtyc0w.c" -O NaughthyCow.c
cd..
echo "-----------------------------------"
echo "All Done!! - Downloads completed..."
echo "-----------------------------------"

#eof
