#!/bin/bash
#
latest="$(curl -i -m 20 -o /dev/null -s -w %{http_code} https://karili-generic.pkg.coding.net/remote/v1/yuyue.jar?version=latest)"
echo $latest
if [ $latest -ne "404" ]
then
	echo latest
	curl -L "https://karili-generic.pkg.coding.net/remote/v1/yuyue.jar?version=latest" -o yuyue.jar
else
	echo default
	curl -L "https://karili-generic.pkg.coding.net/remote/v1/yuyue.jar?version=update" -o yuyue.jar
fi
