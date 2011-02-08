#!/bin/bash

OE_HOME=~/overo-oe

mkdir -p ${OE_HOME}
cd ${OE_HOME}


git clone git://gitorious.org/gumstix-oe/mainline.git org.openembedded.dev
cd org.openembedded.dev
git checkout --track -b overo origin/overo


cd ${OE_HOME}
git clone git://git.openembedded.net/bitbake bitbake
cd bitbake
git checkout 1.10.2


cd ${OE_HOME}
cp -r org.openembedded.dev/contrib/gumstix/build .


cp ~/.bashrc ~/bashrc.bak
cat ${OE_HOME}/build/profile >> ~/.bashrc

. ${OE_HOME}/build/profile

cd ${OE_HOME}
bitbake gcc-cross-sdk
#bitbake omap3-console-image
#bitbake u-boot-omap3
#bitbake x-load
