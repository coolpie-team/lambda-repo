
source scripts/config.sh



#stream="ent-coolpie"

stream=$1

func=$2

ver=$3



tmpFolder='.tmp'

cp -fr $stream $tmpFolder

cp -fr ent-shared $tmpFolder

cp -fr shared $tmpFolder

#zipFile=lambda-$stream-$ver.zip
zipPrefix=lambda-$stream-$func
zipFile=$zipPrefix.zip

#cd $ver && zip -r ../build/$zipFile $APP_SOURCES && cd ..
#cd $stream && zip -r ../.build/$zipFile $APP_SOURCES
cd $tmpFolder && zip -r ../.build/$zipFile *  && cd ..

cp .build/$zipFile .build/$zipPrefix-$ver.zip
