@REM Windows batch file to set the mqsi environment
@REM and execute the mqsiprofile command.

@REM Saves the current working directory and enter the directory where 'mqsiprofile' generally lives.

@pushd %1

@call "mqsiprofile.cmd" >NUL 2>NUL

:: Get back to the project directory

@popd

:: Now mqsideploy can be called.

::
:: %2 = integration node
:: %3 = hostname
:: %4 = port
:: %5 = bar file
:: %6 = intergration server (execution group)

mqsideploy %2 -i %3 -p %4 -a %5 -e %6
