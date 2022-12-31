#Colours
r = '\e[1;31m'
g = '\e[1;32m'
y = '\e[1;33m'
b = '\e[1;34m'
p = '\e[1;35m'
cyn = '\e[1;36m'



echo

echo -e $cyn "███████╗██╗   ██╗███████╗      ██████╗  █████╗ ███╗  ██╗███╗  ██╗███████╗██████╗" 
echo -e $cyn "██╔════╝╚██╗ ██╔╝██╔════╝      ██╔══██╗██╔══██╗████╗ ██║████╗ ██║██╔════╝██╔══██╗"
echo -e $cyn "█████╗   ╚████╔╝ █████╗  █████╗██████╦╝███████║██╔██╗██║██╔██╗██║█████╗  ██████╔╝"
echo -e $cyn "██╔══╝    ╚██╔╝  ██╔══╝  ╚════╝██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝  ██╔══██╗"
echo -e $cyn "███████╗   ██║   ███████╗      ██████╦╝██║  ██║██║ ╚███║██║ ╚███║███████╗██║  ██║"
echo -e $cyn "╚══════╝   ╚═╝   ╚══════╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚══╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝"
echo -e $g "  ______________________________________________________Coded by Kavindu Sandaruwan"
echo
echo -e $y "What is your Banner name ? : /c"
read Bname
echo
echo -e $y "What is your name ? : /c"
read name
echo "cowsay -f eyes "$name" | lolcat " > name.txt
echo "figlet "$Bname" | lolcat " > Bname.txt
echo "clear" > clear.txt
echo "PS1='\$ '" > Temp.txt

#Remove old files
rm -rf /data/data/com.termux/files/usr/ect/zshrc
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc

#Injecting files to zshrc
cat "clear.txt" >> /data/data/com.termux/files/usr/ect/zshrc
cat "name.txt" >> /data/data/com.termux/files/usr/ect/zshrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/ect/zshrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/ect/zshrc

#Injecting files to bash.bashrc
cat "clear.txt" >> /data/data/com.termux/files/usr/ect/bash.bashrc
cat "name.txt" >> /data/data/com.termux/files/usr/ect/bash.bashrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/ect/bash.bashrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/ect/bash.bashrc

rm -rf name.txt Bname.txt clear.txt 
echo
figlet Finish | lolcat
echo -e $r "Please Restart Your Termux"