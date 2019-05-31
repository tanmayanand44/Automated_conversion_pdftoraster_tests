folder=$1
ls $folder > temp
mkdir -p $2
for i in $(ls $folder)
do
echo "$folder/$i"
filename=`echo $i | cut -d'.' -f1`
cupsfilter -i application/vnd.cups-pdf  -m application/vnd.cups-raster "$folder/$i" > "$2/$filename.pwg"
#echo "$2/$filename.pwg"
done
