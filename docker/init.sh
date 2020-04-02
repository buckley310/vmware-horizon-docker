#!/bin/sh

pcscd
su vmuser -s /usr/bin/vmware-view -- "$@"
