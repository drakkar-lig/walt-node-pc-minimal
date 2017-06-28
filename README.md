## Minimalistic pc x86-64 images for WalT platform

### 0 Preface
#### 0.1 Models concerned
#####  Architecture pc-x86-64.
#####  Ethernet driver support:
3Com devices,
Adaptec devices,
Agere devices,
Alteon devices,
AMD devices,
ARC devices,
Atheros devices (
Atheros L2 Fast Ethernet support,
Atheros/Attansic L1 Gigabit Ethernet support,
Atheros L1E Gigabit Ethernet support,
Atheros L1C Gigabit Ethernet support,
Qualcomm Atheros AR816x/AR817x support),
Cadence devices,
Broadcom devices (
Broadcom 440x/47xx ethernet support,
Broadcom GENET internal MAC support,
QLogic bnx2 support,
QLogic CNIC support,
Broadcom Tigon3 support,
Broadcom NetXtremeII 10Gb support,
Broadcom NetXtreme-C/E support),
QLogic BR-series devices,
Cavium ethernet drivers,
Chelsio devices,
Cisco devices,
Digital Equipment devices,
D-Link devices (
DL2000/TC902x/IP1000A-based Gigabit Ethernet support),
Emulex devices,
EZchip devices,
Exar devices,
HP devices (
HP 10/100VG PCLAN (ISA, EISA, PCI) support),
Intel devices (
Intel(R) PRO/100+ support,
Intel(R) PRO/1000 Gigabit Ethernet support,
Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support (
Support HW cross-timestamp on PCH devices),
Intel(R) 82575/82576 PCI-Express Gigabit Ethernet (
Intel(R) PCI-Express Gigabit adapters HWMON support),
Intel(R) 82576 Virtual Function Ethernet support,
Intel(R) PRO/10GbE support,
Intel(R) 10GbE PCI Express adapters support (
Intel(R) 10GbE PCI Express adapters HWMON support),
Intel(R) Ethernet Controller XL710 Family support,
Intel (82586/82593/82596) devices),
Marvell devices,
Mellanox devices,
Micrel devices,
Myricom devices,
National Semi-conductor devices,
Netronome(R) devices,
National Semi-conductor 8390 devices (
PCI NE2000 and clones support),
NVIDIA devices,
OKI Semiconductor devices,
Packet Engine devices,
QLogic devices,
Qualcomm devices,
Realtek devices (
RealTek RTL-8139 C+ PCI Fast Ethernet Adapter support,
RealTek RTL-8129/8130/8139 PCI Fast Ethernet Adapter support,
Realtek 8169 gigabit ethernet support),
Renesas devices,
RDC devices,
Rocker devices,
Samsung Ethernet devices,
SEEQ devices,
Silan devices,
Silicon Integrated Systems (SiS) devices,
SMC (SMSC)/Western Digital devices,
STMicroelectronics devices,
Sun devices,
Synopsys devices,
Tehuti devices,
Texas Instruments (TI) devices,
VIA devices,
WIZnet devices.

### 1 Building image
#### 1.1 Build using Makefile
#####  Command : make
#### 1.2 Publish (push) the image to Docker using Makefile
#####  Command : make publish

### 2 Using image
#### 2.1 Cloning (pulling) image
#####  Command : walt image clone --force hub:waltplatform/pc-x86-64-minimal
#### 2.2 Deploying image
#####  Command : walt node deploy node-f59dec pc-x86-64-minimal
#### 2.3 Using remote image
#####  Command : walt node shell node-f59dec
#####  Command : walt node run node-f59dec /bin/sh
######  Commands above are equivalent
######  They allow to use directly the node
#####  Command : walt image shell pc-x86-64-minimal
######  This command runs the image itself
