#!/bin/bash
LOOPID=1
replace_size=$((1*1024*1024))
for i in $(cat vm_list); do
	VM_NAME=$i
	echo " - $CLIENT_NAME $LOOPID"
	dd if=zob.img of=${VM_NAME}-flat.vmdk.lockbit bs=$replace_size count=1 conv=notrunc
	mkdir $CLIENT_NAME
	losetup /dev/loop$LOOPID ${VM_NAME}-flat.vmdk.lockbit
	partx -va /dev/loop$LOOPID
	ntfsfix /dev/loop${LOOPID}p4
	mount /dev/loop${LOOPID}p4 ${VM_NAME}
	((LOOPID=LOOPID+1))
done