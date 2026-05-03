#!/usr/bin/env bash
source "$(dirname "${BASH_SOURCE[0]}")/lib.bash"

# Test 'aconfmgr check' warning when a config file sorts after 99-unsorted.sh.

TestPhase_Setup ###############################################################
TestWriteFile "$config_dir"/99-unsorted.sh ''
TestWriteFile "$config_dir"/pc-z.sh ''
test_expected_warnings+=1

TestPhase_Run #################################################################
AconfCheck

TestPhase_Check ###############################################################

TestDone ######################################################################
