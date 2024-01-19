# pullAfile
bash script to load a file into ModSave on a timer also logs file state each pull to disocrd webhook 


download files
`
cd ~
git clone https://github.com/JTWP-org/pullAfile.git
`
<hr>
open folder with files and give script permissions to run will need sudo here

`
cd pullAfile
`

`
sudo chmod +x pullAfile.sh
`
<hr>
set up config file 

`
nano cfg.cfg
`

```
echo "-------------- CFG LOADED ----------------"
#git hub RAW url must use RAW file 
URL="https://raw.githubusercontent.com/something"
#where to save file 
DESTINATION="/home/steam/pavlovserver/Pavlov/Saved/Config/ModSave/pull.json"
#discord webhook needed to log file state 
WEBHOOK_URL="iamadopewebhook.org"
# True or False {must use capital}
WEBHOOK_ENABLED=False
```

<hr>

make the script run every so often ( will be setting it in minutes ) with the way i have it below it will run every 10 mins 

`
crontab -e
`

```
#  at the bottom add this line (here is where u set the time leave spacing and shit alone just edit the 10 to the number of mins u want ) uu will also need to add the full path to the script no ~ 

#*/{MINS} * * * * / bash {PATH}.sh

*/10 * * * * bash /home/steam/pullAfile/pullAfile.sh
```
