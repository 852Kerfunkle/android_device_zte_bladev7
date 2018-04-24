#!/bin/bash

VENDOR=zte
DEVICE=bladev7

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

rm proprietary-blobs-notfound.txt
rm proprietary-blobs-found.txt

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    #cp /home/yves/Android/LineageOS/images/sys/$FILE $BASE/$FILE
    adb pull /system/$FILE $BASE/$FILE
    #rc=$?;
    #if [[ $rc != 0 ]]; then
    #    echo $FILE >> proprietary-blobs-notfound.txt;
    #else
    #    echo $FILE >> proprietary-blobs-found.txt;
    #fi
done

echo Done

./setup-makefiles.sh
