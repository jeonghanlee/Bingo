#!../../bin/linux-x86_64/Bingo

#- You may have to change Bingo to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"


epicsEnvSet("ENGINEER","hanlee x3409")
epicsEnvSet("IOCNAME", "Bingo90")

## Register all support components
dbLoadDatabase "dbd/Bingo.dbd"
Bingo_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/Bingo1-90.db","P=Bingo90:")

cd "${TOP}/iocBoot/${IOC}"

iocInit


dbl > "$(TOP)/$(IOCNAME)_PVs.list"
