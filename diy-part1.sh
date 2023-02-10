git checkout a9553c7666bcef688b5a6deee5974f5fd8446219
git clone https://github.com/xiaorouji/openwrt-passwall.git -b packages ./package/lean/passwall_package
cd package/lean/passwall_package
git checkout 4fd4bf8f68fbbbd0d9eca865e68762d6ce3a01de
cd -
git clone https://github.com/xiaorouji/openwrt-passwall.git -b luci ./package/lean/passwall
cd /package/lean/passwall
git checkout 1b4d4fe283de028826dd3d112a5132e063e61e30
cd -
cp -rf ./package/lean/passwall_package/* ./package/lean/passwall
rm -rf ./package/lean/passwall_package
sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
