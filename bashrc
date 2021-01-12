#!/system/bin/sh -e
export PATH=$PATH:/su/bin
trap 'echo "prohibitted action"' 2
echo "Enter admin password: "
read -s a
echo $a > temfilpas
if nsu -c cmp -s /data/pass temfilpas
then
echo "Password correct"
else
exit
fi

rm -f temfilpas
