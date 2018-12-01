#!/bin/bash

# baixar musica no formato mp3
function mp3Download(){
    echo -n "Insira a url : ";
    read url;
    
    youtube-dl --extract-audio --audio-format mp3 $url;
}

# baixar playlist
function playlistDownload(){
    echo -n "Insira a url : ";
    read url;
    
    echo "formatos aceitos ";
    youtube-dl -c -F $url;
    
    echo -n "\n\nformato numero : ";
    read formato;

    youtube-dl -cit -f $formato $url;
}

