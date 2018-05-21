#/bin/bash
#filename: generate_checksums.sh
PIDARRAY=()
for file in text1 text2
do
md5sum $file &
PIDARRAY+=("$!")
done
wait ${PIDARRAY[@]}
