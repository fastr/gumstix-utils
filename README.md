A collection of scripts and such for Gumstix / OpenEmbedded development.

Your customizations

  * `settings.env` - defines namespaced variables used throughout the scripts
    * should work just fine for BeagleBoard (and any omap board) too!
    * the migration to using only this file is incomplete
      * variables not in this file can be found at the top of each script

Creating an installable image with your own secret sauce

  * `overo-image-download-sakoman` - download sakoman's latest rather than building your own
  * `overo-image-create-base` - bitbake your image of choice, plus boot files and place them in a target directory
  * `overo-image-pre-overlay` - dummy script (does nothing): customize this yourself
  * `overo-image-create-overlay` - dummy script (does nothing): customize this yourself
  * `overo-image-apply-overlay` - copies your overlay to the target directory
  * `overo-image-prepare` - all of the above

Creating an SDHC card

  * `overo-sdhc-partition` - create a boot and root partition of appropriate sizes
  * `overo-sdhc-format` - format the boot as FAT32 and the root as ext3
    * can easily be customized to have **multiple partitions**
  * `overo-sdhc-popullate` - `rsync` an `untar`ed special directory with special sauce
    * also sets a random MAC address (useful if you have your own boards and haven't set a MAC in the ROM)
    * will ask for an IP address to use (useful if you have the stagecoach)
  * `overo-sdhc-prepare` - all of the above
  * `overo-sdhc-install-sakoman-prebuilt` - all of the above, but using the latest downloaded images from Sakoman instead

Utilities

You must have node.js installed and these should be place in `/usr/local/bin`

  * `random-string` - generates a random string (for a `tmp` file or directory, for example)
  * `random-mac` - generates a random MAC (for use in `boot.scr` with `u-boot`, for example)

Usage
====

  0. edit `settings.env` to match your directory structure
  0. edit `bootscript.tpl` to match the configuration you need
    * this is a must have for the Overo Tide, and a definite plus for all others
  0. run the scripts in place (so that `settings.env` can be found)
  0. e-mail me with any questions or comments

TODO
----

Scripts that I would like to get up eventually:

  * mkmachine - automate the create of a machine type (such as Overo + Tobi)
  * mkdistro - automate the creation of a distribution (such as Angstrom)
  * automate the creation of packaging a normal autotools/make created library
