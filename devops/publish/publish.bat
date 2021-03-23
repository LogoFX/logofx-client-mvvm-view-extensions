cd ../build
call build.bat
cd ../pack
call ./pack.bat
cd ../publish
call ./copy.bat LogoFX.Client.Mvvm.View.Extensions 2.2.0-rc2 %1
cd ../install
call ./uninstall-global.bat LogoFX.Client.Mvvm.View.Extensions 2.2.0-rc2