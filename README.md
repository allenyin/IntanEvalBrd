Modified from [Intan C++/Qt source code for RHD2000 interface software, version 1.5](http://www.intantech.com/files/RHD2000interface_source_code_v1_5.zip)

** Compiling unmodified Intan evaluation board software **
Steps to compile on Ubuntu 14.04 (starting from fresh download from Intan), some steps taken from Intan_README.txt

1. Navigate to `source/`

2. `cp ../Opal\ Kelly\ library\ files/Linux\ 64-bit/libokFrontPanel.so .`

3. In `RHD2000interface.pro` file, add a line `LIBS += -L./ -l okFrontPanel -ldl`

   This way the generated Makefile by qmake have the correct linker flags to find `okFrontPanel` and `libdl` libraries.

4. In `RHD2000interface.pro` where it reads `QT += widges`, change it to read `QT += widgets multimedia`.

5. Do `qmake-qt4`.

6. In the generated Makefile, in the `CXXFLAGS`, add `-std=c++11` to allow C++11 features.

7. In production systems, change the `-02` flag into `-03` for both `CXXFLAGS` and `CFLAGS` line in the Makefile.

Running `make` should now be successful.

**Installing USB Drivers**:

Linux drivers can be downloaded from [Intan website](http://www.intantech.com/files/RHD2000_USB_interface_board_drivers.zip).

1. Extract and follow the `LINUX_README.txt` instructions to add a udev rule to allow USB access to the attached Opal Kelly devices.

2. This is not enough. The `libFrontPanel.so` library is linked against `libudev0`. Ubuntu 14.04 only supplies `libudev1`. So, go download a `libudev0` debian package and manually install it with `dpkg -i <package_name>`.

All versions of bitfiles for the FPGA live in `bitfiles/`.

`originaIntanMain.bit` is the `main.bit` file that comes from their website. Before running the evaluation board, one of the bit files must be copied to the source directory and renamed to `main.bit`.

** Modified Interface Software **

To compile the modified interface software:

1) Replace the `main.bit` file in `source/` with the appropriate ones from `bitfiles/` directory.

2) Replace the `libokFrontpanel.so`, `okFrontPanelDLL.h`, and `okFrontPanelDLL.cpp` from the appropriate folder from `OpalKellyLibraryFiles/` folder. `XEM6010/` contains those for XEM6010-LX45 (unmodified Intan), `XEM6310/` contains those for XEM6310-LX150.
