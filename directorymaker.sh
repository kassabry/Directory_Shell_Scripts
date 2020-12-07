#!/bin/sh
# Making a file with 5 lines
file="test_file.txt"
echo -n > $file
echo "Line 1" >> $file
echo "Line 2" >> $file
echo "Line 3" >> $file
echo "Line 4" >> $file
echo "Line 5" >> $file
#Testing to see if the file has 5 lines
line_num=$(wc -l < $file)
if [ $line_num == 5 ]
then
  #Making the folder with all the files
  SCRIPTPATH=$(pwd)
  $(mkdir -p TestFolder/{1..500})
  for i in {1..500}
  do
	$(cp -a $file TestFolder/$i)
  done
fi