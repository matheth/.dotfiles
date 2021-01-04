#!/bin/bash
# List of possible arguments:
#   new
#   3d-graphics
#   animals
#   anime
#   aviation
#   cars
#   celebrities
#   food
#   games
#   girls
#   holidays
#   men
#   motorcycles
#   movies
#   music
#   nature
#   space
#   sport
#   various
#   world

downloadImage(){
    mainPage='https://motaen.com'

    images="${mainPage}"

    if [ "$1" = "new" ] ; then

        images+='/new'

    else

        images+='/categories/view/name/'

        case $1 in
            aviation)
                images+='avia'
                ;;
            cars)
                images+='auto'
                ;;
            men)
                images+='male-celebrities'
                ;;
            various)
                images+='other'
                ;;
            *)
                images+="$1"
                ;;
        esac
    fi

    # get the link to a image
    xpathGeneral='/html/body/main/div[@class="parent-element"]'

    # random number:
    randomImage=$((2+$RANDOM%15))
    xpathImage="${xpathGeneral}"'/div[@class="content col-md-12 col-xs-12"]/ul[@class="element"]/li['"${randomImage}"']/a/@href'
    image=$(curl -s $images | xmllint --html --xpath "string($xpathImage)" -)
    imagePage="${mainPage}${image}"

    xpathDownload="${xpathGeneral}"'/div[@class="content col-md-12 col-xs-12"]/div[@class="lig-cnt col-md-8"]/div[@class="download-wallpaper"]/ul[1]/li[2]/a/@href'
    downloadWallpaper=$(curl -s $imagePage | xmllint --html --xpath "string($xpathDownload)" -)
    downloadWallpaperPage="${mainPage}${downloadWallpaper}"

    # complete
    xpathFullImage="${xpathGeneral}"'/div[@class="this_download col-md-12 col-xs-12"]/div[@class="full-img col-md-9"]/img/@src'
    fullImage=$(curl -s $downloadWallpaperPage | xmllint --html --xpath "string($xpathFullImage)" -)

    nameFullImage=$(echo $fullImage | grep -Eow "[^\/]*\.jpg$" -)
    pathToImage='/home/matheth/Pictures/desktop-wallpapers/'"${nameFullImage}"

    curl "${mainPage}${fullImage}" > "${pathToImage}"
    echo "${pathToImage}"
}
desktop="$(downloadImage $1)"
lockscreen="$(downloadImage $1)"

# SET DESKTOP PICTURE
gsettings set org.gnome.desktop.background picture-uri "file://${desktop}"
# SET LOCKSCREEN PICTURE
gsettings set org.gnome.desktop.screensaver picture-uri "file://${lockscreen}"
