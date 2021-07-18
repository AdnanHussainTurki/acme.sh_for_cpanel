# Deploy Free SSL for expired/unlicensed cPanel based server 
Do you run a server which is based on cPanel but don't want to buy a license for having SSL for all your domains? This repo is right for you. **You will need to use root access to the server in order make use of it**

### Installation
- Login to your cPanel based server via root or sudoer
- Change directory to root
```
cd /root
```
- Clone official and install [acme repository](https://github.com/acmesh-official/acme.sh) in the root directory
```
git clone https://github.com/acmesh-official/acme.sh.git
cd ./acme.sh
./acme.sh --install -m you@somewhere.com
```
- Clone this repository 
```
git clone https://github.com/AdnanHussainTurki/acme.sh_for_cpanel
```
- Change directory to acme.sh_for_cpanel
```
cd acme.sh_for_cpanel
```
- Run the script secure.sh (with sudo if applicable)
```
sh secure.sh
```
- That is all. All of your domains and subdomains linked with **Apache** will be renewed from ZeroSSL for 90 days.


### You could help in this simple code too...
The smart ones among you may already be thinking, if we could add a cron job for run the secure.sh script every 90 days that would be great. Yes. Unfortunately I could not be able find much time for this. :(

If you able to implement this, please contribute. Thanks.

### How to contribute
- Create a fork, make changes and send a pull request.
- Raise a issue


### Buy me a coffee
[![](https://img.buymeacoffee.com/api/?url=aHR0cHM6Ly9pbWcuYnV5bWVhY29mZmVlLmNvbS9hcGkvP25hbWU9YWRuYW50dXJraSZzaXplPTMwMCZiZy1pbWFnZT1ibWMmYmFja2dyb3VuZD1mZjgxM2Y=&creator=adnanturki&is_creating=building%20cool%20things%20every%20single%20f**king%20day.&design_code=1&design_color=%23ff813f&slug=adnanturki)](https://www.buymeacoffee.com/adnanturki)

### License
Licensed under Apache 2.0. You can check its details [here](https://choosealicense.com/licenses/apache-2.0/ "here").
