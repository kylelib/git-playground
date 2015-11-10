echo Smg.E3.AdverseAction
cd Smg.E3.AdverseAction
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.Api
cd Smg.C3.Api
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.AppraisalServices
cd Smg.C3.AppraisalServices
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.C3Loan
cd Smg.C3.C3Loan
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.CallBackApi
cd Smg.C3.CallBackApi
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.Client
cd Smg.C3.Client
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.Common.E3.Connect
cd Smg.Common.E3.Connect
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.Common.E3.Data
cd Smg.Common.E3.Data
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Sgm.DeliverIt
cd Sgm.DeliverIt
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Sgm.FileIntake
cd Sgm.FileIntake
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.Imaging
cd Smg.Imaging
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Sgm.E3.ImportExport
cd Sgm.E3.ImportExport
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.Integration
cd Smg.C3.Integration
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.IntegrationServices
cd Smg.C3.IntegrationServices
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.Common.Logging
cd Smg.Common.Logging
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Sgm.NotificationManager
cd Sgm.NotificationManager
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Sgm.AutomatedIntake.Poc
cd Sgm.AutomatedIntake.Poc
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.RuleServices
cd Smg.C3.RuleServices
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
echo Smg.C3.Rules
cd Smg.C3.Rules
for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
cd ..
