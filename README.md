# kcachegrind vagrant vm
This is a little helper if you need to access kcachegrind on mac or windows (not tested, but should work out of the box).

In order to use it, you just need to install vagrant & virtualbox, clone this repository and issue the following commands within the checkout:

```shell
vagrant up
vagrant kcachegrind
```
Put your cachegrind files into the cachegrind_files directory, which is shared with the vm.

## Compatibility
Has not yet been tested with vagrant 1.1.
