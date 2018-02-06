#!/bin/sh
echo "> Creating Directory lenken_outcome
 in ~/Documents"

# create directory lenken_outcome

if [ -d "~/Documents/lenken_outcome
" ]; then
  echo "### Directory ~/Documents/lenken_outcome
   exists"
  rm -r ~/Documents/lenken_outcome
  
fi

mkdir ~/Documents/lenken_outcome

echo "> lenken_outcome
 created successfully"

# Move to directories
echo "> Changing directory to lenken_outcome
"
cd ~/Documents/lenken_outcome


echo "> In Directory lenken_outcome
"

# Copy files by redirecting input: first make 2 files, copy content of one file to another
touch file.txt file2.txt

echo "> file.txt, file2.txt created successfully"
FILE_CONTENTS="This is text is the content of file.txt"
echo $FILE_CONTENTS > file.txt

cat file.txt > file2.txt
echo "> file2.txt contents are "
cat file2.txt

read -p "Enter filename you want to search for in Documents folder " filename

# List directory contents and pipe based on keyword/parameter given by user
ls -la ~/Documents | grep $filename

# Executing with parameters
read -p "Enter program that is in your PATH environment and is running " program
 
if pgrep -x "$program" > /dev/null
then
    echo "$program is Running"
else
    echo "$program has Stopped"
fi