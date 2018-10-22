#!/usr/bin/env bats
#===============================================================================
#
#         USAGE:  bats schematron.bats 
#         
#   DESCRIPTION:  Unit tests for 'Schematron/schematron-test' project 
#
#         INPUT:  N/A
#
#        OUTPUT:  Unit tests results
#
#  DEPENDENCIES:  This script requires bats (https://github.com/sstephenson/bats)
#
#        AUTHOR:  Tony Graham
#                 Blatantly copied from 'XSpec/xspec'
#
#       LICENSE:  MIT License (https://opensource.org/licenses/MIT)
#                 See 'LICENSE' in this directory
#
#===============================================================================

#setup() {
#  BLAH="blah"
#}


#teardown() {
#  BLAH="blah"
#}


function xspec_schematron {
    run ${XSPEC_HOME}/bin/xspec.sh -s ${1}
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
    return $status
}

@test "schematron/universalTests.xspec" {
    xspec_schematron schematron/universalTests.xspec
}

@test "schematron/universalTests-xslt2.xspec" {
    xspec_schematron schematron/universalTests-xslt2.xspec
}
