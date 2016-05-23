This folder includes the OpalKelly FrontPanel API files needed:

XEM6010/
    libokFrontPanel.so
    okFrontPanelDLL.h
    okFrontPanelDLL.cpp
    okFrontPanel.dll

These files were the original ones that came with Intan Evaluation Board Interface software, for working with the XEM6010-LX45 board. The .dll file is for windows. All files are 64-bits.

XEM6310/
    libokFrontPanel.so
    okFrontPanelDLL.h
    okFrontPanelDLL.cpp

These are the API files from FrontPanel-Ubuntu12LTS-x64-4.3.1, for XEM6310-LX150. Note that FrontPanel APIs more recent than 4.3.1 will break the Evaluation Board Interface software due to forward declaration of the okCFrontPanel class in rhd2000evalboard.h, and the subsequent calling of the FrontPanel methods in rhd2000evalboard.cpp -- this will result in 'invalid use of incomplete type' errors.


