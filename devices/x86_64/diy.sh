#!/bin/bash
# 修改主机名字
sed -i 's/OpenWrt/LEDE/g' package/base-files/files/bin/config_generate
#添加img编译时间前缀。
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(shell date +%Y%m%d)-LEDE-1907-Snapshot-X64-/g' include/image.mk
# 修改内核版本
#sed -i 's/KERNEL_PATCHVER:=4.14/KERNEL_PATCHVER:=4.19/g' target/linux/x86/Makefile
