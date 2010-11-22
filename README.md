A collection of scripts and such for Gumstix / OpenEmbedded development.

  * `overo-sdhc-partition` - create a boot and root partition of appropriate sizes
  * `overo-sdhc-format` - format the boot as FAT32 and the root as ext3
  * `overo-sdhc-popullate` - `rsync` an `untar`ed special directory with special sauce
    * also sets a random MAC address (useful if you have your own boards and haven't set a MAC in the ROM)
  * `overo-sdhc-prepare` - all of the above

TODO
----

Scripts that I would like to get up eventually:

  * mkmachine - automate the create of a machine type (such as Overo + Tobi)
  * mkdistro - automate the creation of a distribution (such as Angstrom)
  * automate the creation of packaging a normal autotools/make created library
