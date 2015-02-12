#!/bin/bash
basedir=`pwd`
[ "$1" == "" ]&&{
echo "Useage: $0 <[classname1|,classname2]>"
exit 0
}
puppet apply --ordering manifest --modulepath=${basedir}/modules ${basedir}/manifests/site.pp -e "include $1"
