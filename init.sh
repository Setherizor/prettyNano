# Copy File
mkdir -p ~/bin/nano && cp ./nano "$_"

# Correct Alias
ALIAS="alias nano"
SETCOMMAND="alias $ALIAS=\"'~/bin/nano/nano'\""
FILE='.mybashrc'

LINE=$(grep -nw $ALIAS ~/$FILE |cut -f1 -d:)
if [ -z "$LINE" ]
  then
    echo "Alias Does not exist, now making it"
    echo -e "\n$SETCOMMAND" >> ~/$FILE
  else
    echo "Alias already on line: $LINE, in file: $FILE; Overwriting now"
    `sed -i "${LINE}s|.*|${SETCOMMAND}|" ~/$FILE`
fi


# Support Mouse and misc QOL improvements
declare -a arr=(
 "set autoindent"
 "set mouse"
 "set smooth"
 "set tabstospaces"
  )
for i in "${arr[@]}"
  do
    grep -q -F '$i' foo.bar || echo '$i' >> ~/.nanorc
  done

# Colors
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
