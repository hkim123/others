cd /proc
for i in *; do
    SWAP=`pmap -S $i | grep total | awk '{ print $3; }'`
    [ "xx$SWAP" != "xx" ] && echo "$SWAP bytes $i"
done | sort -n

