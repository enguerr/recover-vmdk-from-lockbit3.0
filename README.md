![lockbit](https://user-images.githubusercontent.com/9450193/218279017-f80057b4-8830-46af-b77e-211decbcfb99.jpeg)

# recover-vmdk-from-lockbit3.0
Recovering VMDK parts from lockbit 3.0
You are a victim of lockbit 3.0, also known as Lockbit BLACK, and your VSPHERE DATASTORE is encrypted with the .lockbit extension.
Here is a small script to recover data from inside your VMDK.
Lockbit encrypt some KB every some MB, so you can recover some files with holes in it.
This script helped us retrieving precious informations...

# how to use it
 You need to dd the beginning of a clean vmdk of the same type (for example, the same Windows version).
 The command to run on the ESX:
`dd if=MY_VM_NAME-flat.vmdk of=zob.img bs=1M count=1`
Download the zob.img file to your working environment.
Fill the vm-list file with the prefix name of the vmdk' files.
Execute the script to mount it.
Explore the the content of the partition with `cd MY_VM_NAME`
Simply use cp to retrieve the files.
 
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
You have only 9 loop device.

# coming soon
VHDX script coming soon.
  
# expectation
browse your partition files and hope many of them are useable ... (cross your fingers)

GOOD LUCK!
