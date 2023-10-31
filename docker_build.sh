!/bin/bash
localrepo=localbuild
image=drac-javaws-console
version=`date +%Y%m%d%M`

cd container
docker image build -t $localrepo/$image:$version .

cd ..
