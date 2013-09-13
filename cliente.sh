#!/bin/sh

FILE=`zenity --file-selection --title="Select a File"`

case $? in
         0)
                echo "\"$FILE\" seleccionado.";;
         1)
                echo "No ha seleccionado ningún archivo.";;
        -1)
                echo "Ha ocurrido un error inesperado.";;
esac


echo
nc -w3 $1 $2 < $FILE

