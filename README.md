# recover-vmdk-from-lockbit3.0
Recover VMDK partts from lockbit 3.0
you are victtim of lockbit 3.0 aka Lockbit BLACK and your VSPHERE DATASTORE are crypted with .lockbit extension.
Here is a little script to recover data from inside of your VMDK. 

 Please star my repository to let it known by the people. 
 
# how to use it
 you need to dd the beginning of clean vmdk of the same type(same windows version for example).
  the command to run on the ESX :
  `dd if=MY_VM_NAME-flat.vmdk of=zob.img bs=1M count=1`
 download the zob.img file to your work environnement.
 
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
you wan then browse your partitions files and hope them to be recovered ... (cross finger)

GOOD LUCK!