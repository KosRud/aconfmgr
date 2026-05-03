#!/usr/bin/env bash
source "$(dirname "${BASH_SOURCE[0]}")/lib.bash"

# Test 'aconfmgr check' with no warning when all config files sort before 99-unsorted.sh.

TestPhase_Setup ###############################################################
TestWriteFile "$config_dir"/99-unsorted.sh ''
TestWriteFile "$config_dir"/00-foo.sh ''

TestPhase_Run #################################################################
AconfCheck

TestPhase_Check ###############################################################

TestDone ######################################################################
