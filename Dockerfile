FROM debian:stretch

### Installing essential apps
RUN apt-get update && apt-get install -y git vim build-essential file wget cpio python unzip bc libncurses-dev

### Get buildroot source folder using git
WORKDIR /root/
RUN git clone git://github.com/buildroot/buildroot.git pc-x86-64-buildroot
WORKDIR /root/pc-x86-64-buildroot
RUN git checkout 2016.11.3

### Add custom configuration files of busybox and buildroot to the image
ADD configBuildrootBusybox.sh configBuildrootMain.sh S90walt-notify \
	S45connman dump-tar.sh build-fs.sh kernel-fragment.config /root/

### Configure buildroot image installation
RUN /root/configBuildrootBusybox.sh
RUN /root/build-fs.sh pc_x86_64_bios_defconfig pc-x86-64 
WORKDIR /root/target-pc-x86-64
RUN tar cf /tmp/pc_x86_64.tar.gz .

# This image must be called (i.e. docker run...) with
# an argument specifying the board model
# (pc_x86_64). This argument will be passed to the
# following script that will dump the appropriate archive
# to stdout.
ENTRYPOINT ["/root/dump-tar.sh"]

