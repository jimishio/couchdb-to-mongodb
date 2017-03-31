sed -i 's/},{/}\n{/g' $1
sed -i 's/\[{/{/g' $1
sed -i 's/}\]/}/g' $1
