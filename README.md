# recover-vmdk-from-lockbit3.0
Recovering VMDK parts from lockbit 3.0
You are a victim of lockbit 3.0, also known as Lockbit BLACK, and your VSPHERE DATASTORE is encrypted with the .lockbit extension.
Here is a small script to recover data from inside your VMDK.

Please star my repository to make it known to people.
 
# how to use it
 You need to dd the beginning of a clean vmdk of the same type (for example, the same Windows version).
 The command to run on the ESX:
  `dd if=MY_VM_NAME-flat.vmdk of=zob.img bs=1M count=1`
Download the zob.img file to your working environment.
 
# requirement:
 - centos 7.0
 - this list of packages:
    - p7zip
    - guestmount
    - ntfs-3g
    - ntfsprogs
   `yum install p7zip guestmount ntfs-3g ntfsprogs`
   
   
# limitation
dont put more than 9 vms in the vm_list file. 
You ahve only 9 loop device. 
  
# expectation
you wan then browse your partition files and hope they will be recovered ... (cross your fingers)

GOOD LUCK!