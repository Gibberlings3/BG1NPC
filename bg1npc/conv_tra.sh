# Use a parameter to the script ($1) to specify the directory that must be converted
# Use a parameter to the script ($2) to specify the encoding of the files to convert
if [ ! -d bg1npc/tra/$1/utf8 ]; then
	mkdir bg1npc/tra/$1/utf8
fi

for file in $(ls bg1npc/tra/$1/*.tra) 
do
#  echo ${file/tra\/$1\//}
  iconv -f "$2" -t UTF-8 "$file" > utf8/"$file"
done
