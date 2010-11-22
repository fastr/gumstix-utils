A collection of scripts and such for Gumstix / OpenEmbedded development.

  * `overo-sdhc-partition` - create a boot and root partition of appropriate sizes
  * `overo-sdhc-format` - format the boot as FAT32 and the root as ext3
  * `overo-sdhc-popullate` - `rsync` an `untar`ed special directory with special sauce
    * also sets a random MAC address (useful if you have your own boards and haven't set a MAC in the ROM)
  * `overo-sdhc-prepare` - all of the above

  * `overo-mixin-secret-sauce` - untar the base root image and add an overlay

Usage
====

  0. edit the scripts to match your directory structure
    * the variables you should modify are up at the top of each script
  0. copy the scripts into `/usr/local/bin`
  0. use away

TODO
----

Scripts that I would like to get up eventually:

  * mkmachine - automate the create of a machine type (such as Overo + Tobi)
  * mkdistro - automate the creation of a distribution (such as Angstrom)
  * automate the creation of packaging a normal autotools/make created library
