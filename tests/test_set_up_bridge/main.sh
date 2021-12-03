#!/usr/bin/env bash

. ../common
. ../../make_me_a_router.sh

! assert_errcode 0 set_up_bridge
! assert_errcode 0 is_bridge_up
