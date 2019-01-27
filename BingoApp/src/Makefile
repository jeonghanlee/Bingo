TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Bingo
# Bingo.dbd will be created and installed
DBD += Bingo.dbd

# Bingo.dbd will be made up from these files:
Bingo_DBD += base.dbd

# Include dbd files from all support applications:
#Bingo_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Bingo_LIBS += xxx

# Bingo_registerRecordDeviceDriver.cpp derives from Bingo.dbd
Bingo_SRCS += Bingo_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Bingo_SRCS_DEFAULT += BingoMain.cpp
Bingo_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Bingo_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Bingo_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

