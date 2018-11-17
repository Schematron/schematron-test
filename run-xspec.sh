#!/bin/sh

set XSPEC_HOME=`pwd`/xspec-dist

${XSPEC_HOME}/bin/xspec.sh -s schematron/universalTests.xspec
${XSPEC_HOME}/bin/xspec.sh -s schematron/universalTests-xslt2.xspec
