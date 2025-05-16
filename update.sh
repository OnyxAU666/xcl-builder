clear
git fetch origin main
git reset --hard origin/main
git lfs pull

mydate=$(date +'%B %d %Y')

match='2025'
insert=$match'\nCompiled '$mydate
file='project/twee/metadata.twee'
updated='\nUpdated'

sed -i "s/$match/$insert/" $file
sed -i "s/' Subscriber Playtest'/''/" $file
sed -i "s/$updated/' Git Build'$updated/" $file

tweego='tweego -o'

sed -i "s/$tweego/\.\/$tweego/" package.json

npm run build

rm -f "./dist/X-Change Life.html"
sudo rm -rf /var/www/html/
sudo mkdir /var/www/html

sudo rsync -ah --progress dist/ /var/www/html/
