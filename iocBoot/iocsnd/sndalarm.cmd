#!../../bin/linux-x86_64/snd

## You may have to change snd to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/snd.dbd"
snd_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/snd.db","BL=PINK,DEV=SNDAL,GROUP=G1")

cd "${TOP}/iocBoot/${IOC}"

dbLoadTemplate("snd.substitutions")

set_savefile_path("${TOP}/iocBoot/${IOC}/autosave")
set_pass0_restoreFile("auto_settings.sav")

iocInit

create_monitor_set("auto_settings.req", 30, "BL=PINK,DEV=SNDAL")

## Start any sequence programs
#seq sncxxx,"user=epics"
