# SourceTree script to delete a remote branch
git -c diff.mnemonicprefix=false -c core.quotepath=false branch -D -r origin/release/3.0.0
git -c diff.mnemonicprefix=false -c core.quotepath=false push origin :refs/heads/release/3.0.0

# Bash Script to delete remote branch (see SourceTree commands above
git branch -D -r origin/release/3.0.0
git push origin :refs/heads/release/3.0.0

# From http://railsware.com/blog/2014/08/11/git-housekeeping-tutorial-clean-up-outdated-branches-in-local-and-remote-repositories/
    # List Branches that have been merged/finished
    for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r

    # List Branches that have not been merged/finished
    for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r

    # My customizations to generate 'remove branch' scripts
        # Generates scripts to delete remote branches
        for branch in `git branch -r --merged | grep -v HEAD`; do echo -e 'git branch -D -r' $branch; done | sort -r
        for branch in `git branch -r --merged | grep -v HEAD | sed 's/origin// '`; do echo -e 'git push origin :refs/heads'$branch; done | sort -r

# Recover a remote branch from a specific commit (example repoint master to specific commit <sha>) -- remember to push
git checkout -b master c3fc1f2c38820d17f3bc91b16e9d609632d72297

# Alternate recover a branch (have not tried this) -- remember to push
git branch master c3fc1f2c38820d17f3bc91b16e9d609632d72297


#Create a bash script to remove branches that have been merged
for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci" $branch | head -n 1` \\t'git branch -D -r' $branch; done | sort -r |sed s/^.*\\t// >CleanBranches.sh
for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci" $branch | head -n 1` \\t'git push origin :refs/heads/'$branch; done | sort -r |sed s/^.*\\t\// | sed s/origin\\/// >>CleanBranches.sh

#Excludes Master and Develop from the list
for branch in `git branch -r --merged | grep -v HEAD |grep -v master |grep -v develop`; do echo -e `git show --format="%ci" $branch | head -n 1` \\t'git branch -D -r' $branch; done | sort -r |sed s/^.*\\t// >CleanBranches.sh
for branch in `git branch -r --merged | grep -v HEAD |grep -v master |grep -v develop`; do echo -e `git show --format="%ci" $branch | head -n 1` \\t'git push origin :refs/heads/'$branch; done | sort -r |sed s/^.*\\t\// | sed s/origin\\/// >>CleanBranches.sh


