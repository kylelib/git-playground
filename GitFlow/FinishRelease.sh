#!/bin/bash
#to avoid entering credentials each time:   $ git config --global credential.helper wincred
#This script to be run from your source code root (eg: c:\code)
Action=$1
ReleaseName=$2

set -x

project[0]='Smg.C3.Api'
project[1]='Smg.C3.Client'
project[2]='Smg.C3.Rules'
project[4]='Smg.C3.CallBackApi'
project[5]='Smg.C3.Integration'
project[6]='Smg.C3.IntegrationServices'
project[7]='Smg.C3.AppraisalServices'
project[8]='Sgm.E3.ImportExport'
project[9]='Sgm.DeliverIt'
project[10]='Smg.Imaging'

if [ "$Action" == 'finish' ]; then
	echo "Finishing C3 release named: $ReleaseName"
	for i in "${project[@]}"
	do
		echo "Repo: ${i}"
		pushd "${i}"
		git checkout $ReleaseName
		git pull origin $ReleaseName -v
		git checkout master
		git pull origin master -v
		git merge $ReleaseName -v
#		git tag $ReleaseName
		git checkout develop
		git pull origin develop -v
		git merge $ReleaseName -v
		popd
	done
	echo "*** Please inspect your staged commits before publishing. ***"
elif [ "$Action" == 'publish' ]; then
	echo "Publishing master and dev branches and tag: $ReleaseName"
	for i in "${project[@]}"
	do
		echo "Repo: ${i}"
		pushd "${i}"
		git push origin master -v
		git push origin develop -v
		git push origin $ReleaseName
		popd
	done
else
	echo "usage: CreateRelease.sh <finish|publish> <releaseName>"
fi
