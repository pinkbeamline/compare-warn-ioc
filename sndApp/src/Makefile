TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = snd
# snd.dbd will be created and installed
DBD += snd.dbd

# snd.dbd will be made up from these files:
snd_DBD += base.dbd

# Include dbd files from all support applications:
snd_DBD += calc.dbd
snd_DBD += asSupport.dbd

# Add all the support libraries needed by this IOC
snd_LIBS += calc
snd_LIBS += autosave

# snd_registerRecordDeviceDriver.cpp derives from snd.dbd
snd_SRCS += snd_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
snd_SRCS_DEFAULT += sndMain.cpp
snd_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#snd_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
snd_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
