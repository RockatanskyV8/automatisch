#!/bin/sh

COMPROVANTES="$HOME/Documentos/.Sync/ComprovantesBB"
COMP_DEST="$HOME/Documentos/PDF/ComprovantesBB"

[[ -f $COMPROVANTES/*.pdf ]] && mv $COMPROVANTES/*.pdf $COMP_DEST || echo "Sem Comprovantes em $COMPROVANTES"

DOWNLOADSPDF="$HOME/Downloads/.Sync/PDF"
DWNLPDF_DEST="$HOME/Documentos/PDF/"

[[ -f $DOWNLOADSPDF/*.pdf ]] && mv $DOWNLOADSPDF/*.pdf $DWNLPDF_DEST || echo "Sem PDF's $DOWNLOADSPDF"

WPP="$HOME/Sync/Whatsapp/Media"

VIDEOS="$HOME/Vídeos/WPP"
[[ -f $WPP/*Video/*.mp4 ]] &&  mv $WPP/*Video/*.mp4 $VIDEOS || echo "Nenhum vídeo em $WPP"
[[ -f $WPP/*Video/Sent/*.mp4 ]] &&  mv $WPP/*Video/Sent/*.mp4 $VIDEOS || echo "Nenhum vídeo $WPP"

IMAGENS="$HOME/Imagens/WPP"
[[ -f $WPP/*Images/*.jpg ]] && mv $WPP/*Images/*.jpg $IMAGENS || echo "Nenhum jpg em $WPP"
[[ -f $WPP/*Images/*.jpeg ]] && mv $WPP/*Images/*.jpeg $IMAGENS || echo "Nenhum jpeg em $WPP"
[[ -f $WPP/*Images/Sent/*.jpg ]] && mv $WPP/*Images/Sent/*.jpg $IMAGENS || echo "Nenhum jpg em $WPP"
[[ -f $WPP/*Images/Sent/*.jpeg ]] && mv $WPP/*Images/Sent/*.jpeg $IMAGENS || echo "Nenhum jpeg em $WPP"
[[ -f $WPP/*Gifs/*.gif ]] && mv $WPP/*Gifs/*.gif $IMAGENS || echo "Nenhum gif em $WPP"
[[ -f $WPP/*Gifs/Sent/*.gif ]] && mv $WPP/*Gifs/Sent/*.gif $IMAGENS || echo "Nenhum gif em $WPP"

DOCUMENTOS="$HOME/Documentos/WPP"
[[ -f $WPP/*Documents/*.pdf ]] && mv $WPP/*Documents/*.pdf $DOCUMENTOS || echo "Nenhum PDF em $WPP"

AUDIO="$HOME/Música/WPP"
[[ -f $WPP/*Audio/*.opus ]] && mv $WPP/*Audio/*.opus "$AUDIO/audio" || echo "Nenhum audio em $WPP"
[[ -f $WPP/*Voice*/ ]] && mv $WPP/*Voice*/* "$AUDIO/msgvoice" || echo "Nenhuma mensagem de voz em $WPP"

