#!/bin/bash

/bin/busybox unix2dos  sys_config.fex
/bin/cubie-fex2bin sys_config.fex sys_config.bin
/bin/busybox dos2unix  sys_config.fex
/bin/cubie-uboot-spl u-boot-spl-sun8iw6p1.bin  sys_config.bin u-boot-spl-sun8iw6p1-with-sys-config.bin
sudo dd if=u-boot-spl-sun8iw6p1-with-sys-config.bin of=/dev/mmcblk0 bs=1024 seek=8
rm -rf u-boot-spl-sun8iw6p1-with-sys-config.bin

if [ $1 = "tfcard" ];then

	/bin/cubie-uboot u-boot-sun8iw6p1.bin sys_config.bin u-boot-sun8iw6p1-with-sys-config.bin
	sudo dd if=u-boot-sun8iw6p1-with-sys-config.bin  of=/dev/mmcblk0   bs=1024 seek=19096

	rm -rf u-boot-sun8iw6p1-with-sys-config.bin
	echo ""
        echo "_______________________________________________________________________________________________________________________"
	echo ""
	echo "if select wrong parameter,can't boot the system after reboot,so should execute the script again with correct parameter"
	echo "see readme.txt for more details"
	echo ""
        echo "_______________________________________________________________________________________________________________________"
	echo ""
elif [ $1 = "emmc" ];then


	/bin/cubie-uboot   u-boot-sun8iw6p1-card2.bin sys_config.bin u-boot-sun8iw6p1-card2-with-sys-config.bin
	sudo dd if=u-boot-sun8iw6p1-card2-with-sys-config.bin of=/dev/mmcblk0  bs=1024 seek=19096
	rm -rf u-boot-sun8iw6p1-card2-with-sys-config.bin

        echo ""
        echo "_______________________________________________________________________________________________________________________"
        echo ""
        echo "if select wrong parameter,can't boot the system after reboot,so should execute the script again with correct parameter"
	echo "see readme.txt for more details"
        echo ""
        echo "_______________________________________________________________________________________________________________________"
        echo ""




else   
	echo ""
	echo ""
	echo -e "\033[40;31;1mupdate fail! \e[0m"
	echo -e "\033[40;31;1mplease indicate tfcard or emmc \e[0m"
	echo -e "\033[40;31;1mfor example:./update_sys_config.sh tfcard \e[0m"
	echo ""
	echo ""


fi

