# kcachegrind vagrant vm
This is a little helper if you need to access kcachegrind on mac or windows (not tested, but should work out of the box).

In order to use it, you just need to install vagrant & virtualbox, clone this repository and issue the following commands within the checkout:

```shell
vagrant up
vagrant kcachegrind
```
This will start kcachegrind within the VM and open it using X-tunneling via ssh in your mac environment.
X11 is required on your mac, obviously.

Put your cachegrind files into the cachegrind_files directory, which is shared with the vm.

## Compatibility
Has not yet been tested with vagrant 1.1.
