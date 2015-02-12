#!/bin/bash
basedir=`pwd`
puppet apply --ordering manifest --modulepath=${basedir}/modules ${basedir}/manifests/site.pp -e "include $1"
