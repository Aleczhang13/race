task="race"
RACE="/hdd2/zhangchenbin/data/RACE.tar.gz"
GloVe="/hdd2/zhangchenbin/data/glove/glove.840B.300d.txt"

#if [ ! -f "$GloVe" ]; then
#	wget http://nlp.stanford.edu/data/glove.840B.300d.zip -P /hdd2/zhangchenbin/data/glove
#	unzip -o -d /hdd2/zhangchenbin/data/glove/ /hdd2/zhangchenbin/data/glove/glove.840B.300d.zip
#fi;

if [ ! -f "trainedmodel" ]; then
    mkdir trainedmodel
fi;

if [ "$task" = "race" ]; then
#    if [ ! -d "data" ]; then
#        mkdir data
#    fi;
    if [ ! -d "/hdd2/zhangchenbin/data/race" ]; then
        mkdir /hdd2/zhangchenbin/data/race/
    fi;
    if [ ! -d "/hdd2/zhangchenbin/data/wikiqa/sequence" ]; then
        mkdir /hdd2/zhangchenbin/data/race/sequence
    fi;

    if [ -f "$RACE" ]; then
        tar -xf $RACE -C /hdd2/zhangchenbin/data/race/
        python preprocess.py
    else
        echo "!!!!!!!!Please dowload the file \"RACE.tar.gz\" to the path data/race/ through address: https://www.cs.cmu.edu/~glai1/data/race/"
    fi;
fi;

#/hdd2/zhangchenbin/data/race/sequence/train.json