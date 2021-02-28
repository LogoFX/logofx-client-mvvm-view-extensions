cd contents
rmdir /Q /S lib
mkdir lib
cd lib
mkdir net461\
robocopy ../../../../../src/Bin/netframework/Release net461 LogoFX.Client.Mvvm.View.Extensions.* /E
mkdir net5.0-windows
robocopy ../../../../../src/Bin/net/Release net5.0-windows LogoFX.Client.Mvvm.View.Extensions.* /E
cd net5.0-windows
rmdir /Q /S ref
cd ..
mkdir netcoreapp3.1
robocopy ../../../../../src/Bin/netcore/Release netcoreapp3.1 LogoFX.Client.Mvvm.View.Extensions.* /E
cd ../../
nuget pack contents/LogoFX.Client.Mvvm.View.Extensions.nuspec -OutputDirectory ../../../output