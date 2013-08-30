echo "**************************************************************************"
echo "*                 Replacing openjdk with Oracle java6                    *"
echo "**************************************************************************"
sleep 3
echo ""
echo ""
echo "Enter in your sudo password"
sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\* -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update && sudo apt-get install oracle-java6-installer -y
echo ""
echo ""
java -version
echo ""
echo ""
echo "Done"
echo ""
echo ""
echo "**************************************************************************"
echo "*                   Create bin directory and getting repo                *"
echo "**************************************************************************"
sleep 3
echo ""
echo ""
mkdir ~/bin && curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo && chmod a+x ~/bin/repo
echo ""
echo ""
echo "Done"
echo ""
echo "**************************************************************************"
echo "*                      Installing necessary packages                     *"
echo "**************************************************************************"
sleep 3
echo ""
echo ""
sudo apt-get -y install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5-dev ia32-libs x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python
echo ""
echo ""
echo "Done"
echo "**************************************************************************"
echo "*                      Getting Cyanogenmod Sources                       *"
echo "**************************************************************************"
echo ""
echo ""
mkdir -p ~/CM9/
cd ~/CM9
repo init -u git://github.com/CyanogenMod/android.git -b cm-9
repo sync -j4
echo ""
echo ""
echo "Done"