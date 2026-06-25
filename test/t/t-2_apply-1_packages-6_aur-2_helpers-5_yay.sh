#!/usr/bin/env bash
source "$(dirname "${BASH_SOURCE[0]}")/lib.bash"

# Test AUR functionality using yay.

TestNeedAUR
TestNeedAURPackage yay cb43f84828ab4f9700f7c6f9c6d7a923d4cfaff0  # v12.4.2, libalpm v15 compatible
AconfMakePkg yay
TestAddConfig AddPackage --foreign yay
TestAURHelper yay "${XDG_CACHE_HOME:-$HOME/.cache}/yay" false
TestDone
