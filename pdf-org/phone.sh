#!/bin/sh

COMPROVANTES="$HOME/Documentos/.Sync/ComprovantesBB"
COMP_DEST="$HOME/Documentos/PDF/ComprovantesBB"

[ "$(ls -A $COMPROVANTES/*.pdf)" ] && mv $COMPROVANTES/*.pdf $COMP_DEST

DOWNLOADSPDF="$HOME/Downloads/.Sync/PDF"
DWNLPDF_DEST="$HOME/Documentos/PDF/"

[ "$(ls -A $DOWNLOADSPDF/*.pdf)" ] && mv $DOWNLOADSPDF/*.pdf $DWNLPDF_DEST

WPP="$HOME/Sync/Whatsapp/Media"

VIDEOS="$HOME/Vídeos/WPP"
[ "$(ls -A $WPP/*Video/*.mp4)" ] &&  mv $WPP/*Video/*.mp4 $VIDEOS
[ "$(ls -A $WPP/*Video/Sent/*.mp4)" ] &&  mv $WPP/*Video/Sent/*.mp4 $VIDEOS

IMAGENS="$HOME/Imagens/WPP"
[ "$(ls -A $WPP/*Images/*.jpg)" ] && mv $WPP/*Images/*.jpg $IMAGENS
[ "$(ls -A $WPP/*Images/*.jpeg)" ] && mv $WPP/*Images/*.jpeg $IMAGENS
[ "$(ls -A $WPP/*Images/Sent/*.jpg)" ] && mv $WPP/*Images/Sent/*.jpg $IMAGENS
[ "$(ls -A $WPP/*Images/Sent/*.jpeg)" ] && mv $WPP/*Images/Sent/*.jpeg $IMAGENS
[ "$(ls -A $WPP/*Gifs/*.gif)" ] && mv $WPP/*Gifs/*.gif $IMAGENS
[ "$(ls -A $WPP/*Gifs/Sent/*.gif)" ] && mv $WPP/*Gifs/Sent/*.gif $IMAGENS

DOCUMENTOS="$HOME/Documentos/WPP"
[ "$(ls -A $WPP/*Documents/*.pdf)" ] && mv $WPP/*Documents/*.pdf $DOCUMENTOS

AUDIO="$HOME/Música/WPP"
[ "$(ls -A $WPP/*Audio/*.opus)" ] && mv $WPP/*Audio/*.opus "$AUDIO/audio"
[ "$(ls -A $WPP/*Voice*/)" ] && mv $WPP/*Voice*/* "$AUDIO/msgvoice"

