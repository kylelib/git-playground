#!/bin/bash
#to avoid entering credentials each time:   $ git config --global credential.helper wincred
#This script to be run from your source code root (eg: c:\code)
Action=$1
ReleaseName=$2

project[0]='Smg.C3.Api'
project[1]='Smg.C3.Client'
project[2]='Smg.C3.Rules'
project[3]='Smg.C3.RuleServices'
project[4]='Smg.C3.CallBackApi'
#project[5]='Smg.C3.Integration'
project[6]='Smg.C3.IntegrationServices'
project[7]='Smg.C3.AppraisalServices'
project[8]='Sgm.E3.ImportExport'
project[9]='Sgm.NotificationManager'
project[10]='Sgm.DeliverIt'
project[11]='Smg.Imaging'
project[12]='Smc.common.logging'

if [ "$Action" == 'finish' ]; then
	echo "Finishing C3 release named: $ReleaseName"
	for i in "${project[@]}"
	do
		echo "Repo: ${i}"
		pushd "${i}"
		git checkout release/$ReleaseName
		git pull origin release/$ReleaseName -v
		git checkout develop
		git pull origin develop -v
		git merge release/$ReleaseName -v
		popd
	done
	echo "*** Please inspect your staged commits before publishing. ***"
elif [ "$Action" == 'publish' ]; then
	echo "Publishing dev branch"
	for i in "${project[@]}"
	do
		echo "Repo: ${i}"
		pushd "${i}"
		git push origin develop -v
		popd
	done
else
	echo "usage: MergeSomeRelease.sh <finish|publish> <releaseName>"
fi
