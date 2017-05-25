#!/bin/bash
set -ev

if [[ "$CFG" == "CORE" ]]; then
    dotnet build Tests -f netcoreapp1.0 -c Release
else
    msbuild /t:Rebuild /p:Configuration=Release libsodium-net.sln
fi
