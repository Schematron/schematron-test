set XSPEC_HOME=%cd%\xspec-dist

%XSPEC_HOME%\bin\xspec.bat -s schematron\universalTests.xspec
%XSPEC_HOME%\bin\xspec.bat -s schematron\universalTests-xslt2.xspec
