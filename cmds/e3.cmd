#require calc, 3.7.1
require autosave,5.9.0

epicsEnvSet("TOP", "$(E3_CMD_TOP)/..")
epicsEnvSet("ENGINEER","hanlee x3409")
epicsEnvSet("IOCNAME", "Bingo90")
epicsEnvSet("DB_TOP", "$(TOP)/BingoApp/Db")

## Load record instances
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(DB_TOP)")

dbLoadTemplate("$(DB_TOP)/Bingo1-90.substitutions","P=Bingo90:")

iocshLoad("$(autosave_DIR)/autosave.iocsh", "IOCNAME=$(IOCNAME), AS_TOP=$(TOP)")

iocInit

dbl > "$(TOP)/$(IOCNAME)_PVs.list"
