Invoke-WebRequest -UseBasicParsing -OutFile release.zip  https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip
Remove-Item "$env:ProgramFiles\Linux Containers" -Force -Recurse
Expand-Archive release.zip -DestinationPath "$Env:ProgramFiles\Linux Containers\."
rm release.zip
