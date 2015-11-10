#!/bin/bash
#to avoid entering credentials each time:   $ git config --global credential.helper wincred
#This script to be run from your source code root (eg: c:\code)

#Example: CreateRelease2.sh create feature/Exchange30 3.0.0

set -x

Action=$1
SourceBranch=$2
ReleaseName=$3

project[0]='Smg.C3.Api'
project[1]='Smg.C3.Client'
project[2]='Smg.C3.Rules'
project[3]='Smg.C3.CallBackApi'
project[4]='Smg.C3.Integration'
project[5]='Smg.C3.IntegrationServices'
project[6]='Smg.C3.AppraisalServices'
project[7]='Sgm.E3.ImportExport'
project[8]='Sgm.NotificationManager'
project[9]='Sgm.DeliverIt'
project[10]='Smg.Imaging'
project[11]='Smg.Common.Logging'
project[12]='Smg.Common.E3.Connect'

if [ "$Action" == '' ]  && [ "$SourceBranch" == '' ] && [ "$ReleaseName" == '' ]; then
	echo "usage: CreateRelease.sh <create|publish> <sourceBranch> <releaseName>. You must include the text 'release/' or 'hotfix/' with the <releaseName>"
	echo "*** Make sure you specify a <sourceBranch> of 'master' for hotfixes, and 'develop' for releases ***"
	exit
fi

if [ "$Action" == 'create' ]; then
	echo "Creating $ReleaseName from $SourceBranch."
	for i in "${project[@]}"
	do
		RemoteBranch=$SourceBranch
		echo "Repo: ${i}"
		pushd "${i}"
		echo " ${i}: Checking for remote branch ${SourceBranch}"
		if [ "`git show-ref $SourceBranch`" == '' ]; then
			echo "Can't find branch ${SourceBranch}.  Using develop instead."
			RemoteBranch='develop'
		fi
		git checkout $RemoteBranch
		git pull origin $RemoteBranch -v
		git branch $ReleaseName -v
		popd
	done
	echo "*** Please inspect your staged commits before publishing. ***"
elif [ "$Action" == 'publish' ]; then
	echo "Publishing release named: $ReleaseName"
	for i in "${project[@]}"
	do
		echo "Repo: ${i}"
		pushd "${i}"
		git push origin $ReleaseName -v
		popd
	done
else
	echo "'$1' is not a valid action."
fi
