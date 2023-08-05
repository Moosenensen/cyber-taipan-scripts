find /home -regextype posix-extended -regex '.*\.(midi|mid|mod|mp3|mp2|mpa|abs|mpega|au|snd|wav|aiff|aif|sid|mkv|flac|ogg)$' >> soundfiles.txt
find /home -regextype posix-extended -regex '.*\.(mpeg|mpg|mpe|dl|movie|movi|mv|iff|anim5|anim3|anim7|avi|vfw|avx|fli|flc|mov|qt|spl|swf|dcr|dir|dxr|rpm|rm|smi|ra|ram|rv|wmv|asf|asx|wma|wax|wmv|wmx|3gp|mov|mp4|flv|m4v|xlsx|pptx|docx|csv)$' >> videofiles.txt
find /home -regextype posix-extended -regex '.*\.(tiff|tif|rs|iml|gif|jpeg|exe|torrent|pdf|run|bat|jpg|jpe|png|rgb|xwd|xpm|ppm|pbm|pgm|pcx|ico|svg|svgz|pot|xml|pl)$' >> imgfiles.txt
#this part DOES NOT WORK
grep -v "sci" soundfiles.txt >> soundfiles.txt 
grep -v "sci" videofiles.txt >> videofiles.txt
grep -v "sci" imgfiles.txt >> imgfiles.txt
#simplest solution hopefully
for line in $(cat videofiles.txt); do 
  rm $line 
for line in $(cat imgfiles.txt); do 
  rm $line 
for line in $(cat soundfiles.txt); do 
  rm $line 

