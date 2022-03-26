for NUM in {1..99..1}
do
   Q=$((NUM % 2))
   if [ "$Q" == "0" ]
   then
        continue
   fi
   echo "$NUM"
done
    
