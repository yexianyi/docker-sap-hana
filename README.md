# yexianyi/sap-hana [![](https://images.microbadger.com/badges/image/yexianyi/sap-hana.svg)](https://microbadger.com/images/yexianyi/sap-hana "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/yexianyi/sap-hana.svg)](https://microbadger.com/images/yexianyi/sap-hana "Get your own version badge on microbadger.com")

**Notification:**
1. Pls make sure Memory Allocation is greater than 4 GB at least (8G is better) before launch container.
2. After the container launched, several mins would be consumed because of performing SAP HANA installation.

**Quick Start:**
docker run -P -d yexianyi/sap-hana

**JDBC Connection Info**
Url: jdbc:sap://localhost:39015/
Database: HXE
Username: system
Password: Pwd+{$container_id}

**Exposed ports**
4390 8090 39013 39015 39018 59013 59014

**Other info**
##############################################################################
# Summary before execution                                                   #
##############################################################################
HANA, express edition installer : /home/HANA_EXPRESS_20
  Component(s) to install       : HANA server + Application Function Library
  Host name                     : b9c24eaee6e2
  HANA system ID                : HXE
  HANA instance number          : 90
  Master password               : Pwdb9c24eaee6e2


##############################################################################
# Summary before execution:                                                  #
##############################################################################

SAP HANA Express Edition System Installation
   Installation Parameters
      Remote Execution: ssh
      Use single master password for all users, created during installation: Yes
      Database Isolation: low
      Installation Path: /hana/shared
      Local Host Name: b9c24eaee6e2
      SAP HANA System ID: HXE
      Instance Number: 90
      Local Host Worker Group: default
      System Usage: development
      Location of Data Volumes: /hana/shared/data/HXE
      Location of Log Volumes: /hana/shared/log/HXE
      Directory containing custom configurations: /home/HANA_EXPRESS_20/DATA_UNITS/HDB_SERVER_LINUX_X86_64/configurations/custom
      Certificate Host Names: b9c24eaee6e2 -> b9c24eaee6e2
      System Administrator Home Directory: /usr/sap/HXE/home
      System Administrator Login Shell: /bin/bash
      System Administrator User ID: 1000
      ID of User Group (sapsys): 79
      Restart system after machine reboot?: Yes
      Inter Service Communication Mode: ssl
   Software Components
      SAP HANA Database
         Install version 2.00.010.00.1491294693
         Location: /home/HANA_EXPRESS_20/DATA_UNITS/HDB_SERVER_LINUX_X86_64/server
      SAP HANA AFL (incl.PAL,BFL,OFL,HIE)
         Install version 2.00.010.0000.1491308763
         Location: /home/HANA_EXPRESS_20/DATA_UNITS/HDB_AFL_LINUX_X86_64/packages
