#!/bin/bash
echo "Sound Files (y/n)"
read response
if [[ "$response" == ['y'] ]]; then
  mediasound='1'
fi
echo "Video Files (y/n)"
read response
if [[ "$response" == ['y'] ]]; then
  mediasvideo='1'
fi
echo "Image Files (y/n)"
read response
if [[ "$response" == ['y'] ]]; then
  mediaimage='1'
fi
if [[mediasound='1']]; do
find /home -regextype posix-extended -regex '.*\.(midi|mid|mod|mp3|mp2|mpa|abs|mpega|au|snd|wav|aiff|aif|sid|mkv|flac|ogg)$' -delete
fi
if [[mediavideo='1']]; do
find /home -regextype posix-extended -regex '.*\.(mpeg|mpg|mpe|dl|movie|movi|mv|iff|anim5|anim3|anim7|avi|vfw|avx|fli|flc|mov|qt|spl|swf|dcr|dir|dxr|rpm|rm|smi|ra|ram|rv|wmv|asf|asx|wma|wax|wmv|wmx|3gp|mov|mp4|flv|m4v|xlsx|pptx|docx|csv)$' -delete
if [[mediaimage='1']]; do
find /home -regextype posix-extended -regex '.*\.(tiff|tif|rs|iml|gif|jpeg|exe|torrent|pdf|run|bat|jpg|jpe|png|rgb|xwd|xpm|ppm|pbm|pgm|pcx|ico|svg|svgz|pot|xml|pl)$' -delete

