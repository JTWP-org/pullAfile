# pullAfile
bash script to load a file into ModSave on a timer also logs file state each pull to disocrd webhook 


download files
`
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
