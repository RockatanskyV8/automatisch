#!/bin/sh

COMPROVANTES="/home/lucas/Sync/Comprovantes"
COMP_DEST="$HOME/Documentos/PDF/ComprovantesBB"

mv $COMPROVANTES/*.pdf $COMP_DEST

DOWNLOADSPDF="$HOME/Sync/PDF"
DWNLPDF_DEST="$HOME/Documentos/PDF/"

mv $DOWNLOADSPDF/*.pdf $DWNLPDF_DEST

WPP="$HOME/Sync/Whatsapp/Media"

VIDEOS="$HOME/Vídeos/WPP"
mv $WPP/*Video/*.mp4 $VIDEOS || echo "Nenhum vídeo em $WPP"
mv $WPP/*Video/Sent/*.mp4 $VIDEOS || echo "Nenhum vídeo $WPP"

IMAGENS="$HOME/Imagens/WPP"
mv "$WPP/WhatsApp Images/*.jpg" $IMAGENS
mv "$WPP/WhatsApp Images/*.jpeg" $IMAGENS
mv "$WPP/WhatsApp Images/Sent/*.jpg" $IMAGENS
mv "$WPP/WhatsApp Images/Sent/*.jpeg" $IMAGENS
mv "$WPP/WhatsApp Animated Gifs/*.gif" $IMAGENS
mv "$WPP/WhatsApp Animated Gifs/Sent/*.gif" $IMAGENS

DOCUMENTOS="$HOME/Documentos/WPP"
mv "$WPP/WhatsApp Documents/*.pdf" $DOCUMENTOS

AUDIO="$HOME/Música/WPP"
mv "$WPP/WhatsApp Audio/*" "$AUDIO/audio"
mv "$WPP/WhatsApp Voice Notes/*" "$AUDIO/msgvoice"
