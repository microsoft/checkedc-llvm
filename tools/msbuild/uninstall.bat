@echo off

echo Uninstalling MSVC integration...

REM CD to the directory of this batch file.
cd /d %~dp0

set PLATFORM=None
:LOOPHEAD
IF %PLATFORM% == x64 GOTO LOOPEND
IF %PLATFORM% == Win32 SET PLATFORM=x64
IF %PLATFORM% == None SET PLATFORM=Win32


SET D="%ProgramFiles%\MSBuild\Microsoft.Cpp\v4.0\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2010 del %D%\LLVM-vs2010\Microsoft.Cpp.%PLATFORM%.LLVM-vs2010.props
IF EXIST %D%\LLVM-vs2010 del %D%\LLVM-vs2010\Microsoft.Cpp.%PLATFORM%.LLVM-vs2010.targets
IF EXIST %D%\LLVM-vs2010 rmdir %D%\LLVM-vs2010
SET D="%ProgramFiles(x86)%\MSBuild\Microsoft.Cpp\v4.0\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2010 del %D%\LLVM-vs2010\Microsoft.Cpp.%PLATFORM%.LLVM-vs2010.props
IF EXIST %D%\LLVM-vs2010 del %D%\LLVM-vs2010\Microsoft.Cpp.%PLATFORM%.LLVM-vs2010.targets
IF EXIST %D%\LLVM-vs2010 rmdir %D%\LLVM-vs2010

SET D="%ProgramFiles%\MSBuild\Microsoft.Cpp\v4.0\V110\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2012 del %D%\LLVM-vs2012\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012.props
IF EXIST %D%\LLVM-vs2012 del %D%\LLVM-vs2012\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012.targets
IF EXIST %D%\LLVM-vs2012 rmdir %D%\LLVM-vs2012
IF EXIST %D%\LLVM-vs2012_xp del %D%\LLVM-vs2012_xp\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012_xp.props
IF EXIST %D%\LLVM-vs2012_xp del %D%\LLVM-vs2012_xp\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012_xp.targets
IF EXIST %D%\LLVM-vs2012_xp rmdir %D%\LLVM-vs2012_xp
SET D="%ProgramFiles(x86)%\MSBuild\Microsoft.Cpp\v4.0\V110\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2012 del %D%\LLVM-vs2012\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012.props
IF EXIST %D%\LLVM-vs2012 del %D%\LLVM-vs2012\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012.targets
IF EXIST %D%\LLVM-vs2012 rmdir %D%\LLVM-vs2012
IF EXIST %D%\LLVM-vs2012_xp del %D%\LLVM-vs2012_xp\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012_xp.props
IF EXIST %D%\LLVM-vs2012_xp del %D%\LLVM-vs2012_xp\Microsoft.Cpp.%PLATFORM%.LLVM-vs2012_xp.targets
IF EXIST %D%\LLVM-vs2012_xp rmdir %D%\LLVM-vs2012_xp

SET D="%ProgramFiles%\MSBuild\Microsoft.Cpp\v4.0\V120\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2013 del %D%\LLVM-vs2013\toolset.props
IF EXIST %D%\LLVM-vs2013 del %D%\LLVM-vs2013\toolset.targets
IF EXIST %D%\LLVM-vs2013 rmdir %D%\LLVM-vs2013
IF EXIST %D%\LLVM-vs2013_xp del %D%\LLVM-vs2013_xp\toolset.props
IF EXIST %D%\LLVM-vs2013_xp del %D%\LLVM-vs2013_xp\toolset.targets
IF EXIST %D%\LLVM-vs2013_xp rmdir %D%\LLVM-vs2013_xp
SET D="%ProgramFiles(x86)%\MSBuild\Microsoft.Cpp\v4.0\V120\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2013 del %D%\LLVM-vs2013\toolset.props
IF EXIST %D%\LLVM-vs2013 del %D%\LLVM-vs2013\toolset.targets
IF EXIST %D%\LLVM-vs2013 rmdir %D%\LLVM-vs2013
IF EXIST %D%\LLVM-vs2013_xp del %D%\LLVM-vs2013_xp\toolset.props
IF EXIST %D%\LLVM-vs2013_xp del %D%\LLVM-vs2013_xp\toolset.targets
IF EXIST %D%\LLVM-vs2013_xp rmdir %D%\LLVM-vs2013_xp

SET D="%ProgramFiles%\MSBuild\Microsoft.Cpp\v4.0\V140\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2014 del %D%\LLVM-vs2014\toolset.props
IF EXIST %D%\LLVM-vs2014 del %D%\LLVM-vs2014\toolset.targets
IF EXIST %D%\LLVM-vs2014 rmdir %D%\LLVM-vs2014
IF EXIST %D%\LLVM-vs2014_xp del %D%\LLVM-vs2014_xp\toolset.props
IF EXIST %D%\LLVM-vs2014_xp del %D%\LLVM-vs2014_xp\toolset.targets
IF EXIST %D%\LLVM-vs2014_xp rmdir %D%\LLVM-vs2014_xp
SET D="%ProgramFiles(x86)%\MSBuild\Microsoft.Cpp\v4.0\V140\Platforms\%PLATFORM%\PlatformToolsets"
IF EXIST %D%\LLVM-vs2014 del %D%\LLVM-vs2014\toolset.props
IF EXIST %D%\LLVM-vs2014 del %D%\LLVM-vs2014\toolset.targets
IF EXIST %D%\LLVM-vs2014 rmdir %D%\LLVM-vs2014
IF EXIST %D%\LLVM-vs2014_xp del %D%\LLVM-vs2014_xp\toolset.props
IF EXIST %D%\LLVM-vs2014_xp del %D%\LLVM-vs2014_xp\toolset.targets
IF EXIST %D%\LLVM-vs2014_xp rmdir %D%\LLVM-vs2014_xp

REM MSBuild is now under the Visual Studio installation.  VSWhere is a new executable placed in a known
REM location that can be used to find the VS installation, starting with VS 2017 SP1
IF EXIST "%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" (
  FOR /f "usebackq delims=" %%i IN (`"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -latest -prerelease -version 15 -property installationPath`) DO (
    SET D="%%i\Common7\IDE\VC\VCTargets\Platforms\%PLATFORM%\PlatformToolsets"
  )
)

REM On 32-bit Windows OSes before Windows 10, vswhere will be installed under %ProgramFiles%
IF EXIST "%ProgramFiles%\Microsoft Visual Studio\Installer\vswhere.exe" (
  FOR /f "usebackq delims=" %%i IN (`"%ProgramFiles%\Microsoft Visual Studio\Installer\vswhere.exe" -latest -prerelease -version 15 -property installationPath`) DO (
    SET D="%%i\Common7\IDE\VC\VCTargets\Platforms\%PLATFORM%\PlatformToolsets"
  )
)
IF EXIST %D%\LLVM-vs2017 del %D%\LLVM-vs2017\toolset.props
IF EXIST %D%\LLVM-vs2017 del %D%\LLVM-vs2017\toolset.targets
IF EXIST %D%\LLVM-vs2017 rmdir %D%\LLVM-vs2017
IF EXIST %D%\LLVM-vs2017_xp del %D%\LLVM-vs2017_xp\toolset.props
IF EXIST %D%\LLVM-vs2017_xp del %D%\LLVM-vs2017_xp\toolset.targets
IF EXIST %D%\LLVM-vs2017_xp rmdir %D%\LLVM-vs2017_xp

GOTO LOOPHEAD

:LOOPEND
echo Done!
