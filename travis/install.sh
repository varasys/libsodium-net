#!/bin/bash
set -ev

if [[ "$CFG" == "CORE" ]]; then
  dotnet restore libsodium-net.sln
else
  nuget restore libsodium-net.sln
  nuget install NUnit.ConsoleRunner -Version 3.6.1 -OutputDirectory testrunner
fi
