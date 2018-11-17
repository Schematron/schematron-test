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

@test "schematron/universalTests.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s schematron/universalTests.xspec
        echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "schematron/universalTests-xslt2.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s schematron/universalTests-xslt2.xspec
        echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "value-of/svrl-value-of-01.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s value-of/svrl-value-of-01.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "name/svrl-name-01.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s name/svrl-name-01.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]

}

@test "rule/rule-order-01.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s rule/rule-order-01.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]

}

@test "rule/rule-context-01.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s rule/rule-context-01.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "phase/phase-03.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s phase/phase-03.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "phase/phase-04.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s phase/phase-04.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "phase/phase-01.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s phase/phase-01.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "phase/phase-02.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s phase/phase-02.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}

@test "let/let-scope-01.xspec" {
    run ${XSPEC_HOME}/bin/xspec.sh -s let/let-scope-01.xspec
    echo "$output"
    [ "$status" -eq 0 ]
    [[ "${output}" =~ "failed: 0" ]]
    [[ "${output}" =~ "Done." ]]
}
