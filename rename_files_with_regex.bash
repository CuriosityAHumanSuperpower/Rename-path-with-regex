#REGEX 
regex='S([0-9])_E([0-9]{1,2}).([[:alpha:]]{2,4})' 

#LOOP ON EVERY FILES OF CURRENT FOLDER AND SUBFOLDERS
for file in $(find -name \*.*); 
do
	echo $file
	if [[ $file =~ $regex ]]
	then
		mkdir "./season ${BASH_REMATCH[1]}"
		mv "$file" "./season ${BASH_REMATCH[1]}/Attack on titan {tbm-0000}_s0${BASH_REMATCH[1]}e${BASH_REMATCH[2]}.${BASH_REMATCH[3]}"; 
	fi
done 

