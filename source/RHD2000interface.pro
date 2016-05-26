TEMPLATE      = app

TARGET        = RHD2000Interface 

QT            += widgets

LIBS          += -L./ -l okFrontPanel -ldl

CONFIG        += static

# Enable c++11
QMAKE_CXXFLAGS += -std=c++11

# Insert optimization flags
#QMAKE_CXXFLAGS_RELEASE -= -O1
#QMAKE_CXXFLAGS_RELEASE -= -O2
#QMAKE_CXXFLAGS_RELEASE *= -O3

# Compile with debug symbols
QMAKE_CFLAGS_RELEASE += -g
QMAKE_CXXFLAGS_RELEASE += -g

# Compile without optimization for debugging
QMAKE_CXXFLAGS_RELEASE += -O0
QMAKE_CXXFLAGS_RELEASE -= -O1
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE -= -O3

# Define the type of Opal Kelly boards used
DEFINES += "XEM6310LX150=true"  # if using XEM6310-LX150
#DEFINES += "XEM6010LX45=true"  # if using XEM6010-LX45

HEADERS       = \
    okFrontPanelDLL.h \
    rhd2000evalboard.h \
    rhd2000registers.h \
    rhd2000datablock.h \
    waveplot.h \
    mainwindow.h \
    signalprocessor.h \
    bandwidthdialog.h \
    renamechanneldialog.h \
    signalchannel.h \
    signalgroup.h \
    signalsources.h \
    spikescopedialog.h \
    spikeplot.h \
    keyboardshortcutdialog.h \
    randomnumber.h \
    impedancefreqdialog.h \
    globalconstants.h \
    triggerrecorddialog.h \
    setsaveformatdialog.h \
    helpdialoghighpassfilter.h \
    helpdialognotchfilter.h \
    helpdialogdacs.h \
    helpdialogcomparators.h \
    helpdialogchipfilters.h \
    qtincludes.h \
    auxdigoutconfigdialog.h \
    cabledelaydialog.h \
    helpdialogfastsettle.h

SOURCES       = main.cpp \
    okFrontPanelDLL.cpp \
    rhd2000evalboard.cpp \
    rhd2000registers.cpp \
    rhd2000datablock.cpp \
    waveplot.cpp \
    mainwindow.cpp \
    signalprocessor.cpp \
    bandwidthdialog.cpp \
    renamechanneldialog.cpp \
    signalchannel.cpp \
    signalgroup.cpp \
    signalsources.cpp \
    spikescopedialog.cpp \
    spikeplot.cpp \
    keyboardshortcutdialog.cpp \
    randomnumber.cpp \
    impedancefreqdialog.cpp \
    triggerrecorddialog.cpp \
    setsaveformatdialog.cpp \
    helpdialoghighpassfilter.cpp \
    helpdialognotchfilter.cpp \
    helpdialogdacs.cpp \
    helpdialogcomparators.cpp \
    helpdialogchipfilters.cpp \
    auxdigoutconfigdialog.cpp \
    cabledelaydialog.cpp \
    helpdialogfastsettle.cpp
    
RESOURCES     = RHD2000interface.qrc
