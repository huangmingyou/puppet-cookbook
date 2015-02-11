#!/bin/bash
basedir=`pwd`
puppet apply --modulepath=${basedir}/modules ${basedir}/manifests/site.pp
