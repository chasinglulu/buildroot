#!/bin/sh
#
# This script is executed in busybox sh
#
# Copyright (C) 2025 Charleye <wangkart@aliyun.com>
#


main () {
	echo "------ Starting to load modules ------"

	# insmode all modules in /lib/modules

	# insmode all modules in /opt/ko

	echo "------ Complete modules loading ------"
	return 0
}

main
