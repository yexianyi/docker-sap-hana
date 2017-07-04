# yexianyi/sap-hana [![](https://images.microbadger.com/badges/image/yexianyi/sap-hana.svg)](https://microbadger.com/images/yexianyi/sap-hana "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/yexianyi/sap-hana.svg)](https://microbadger.com/images/yexianyi/sap-hana "Get your own version badge on microbadger.com")

<h3>Notification:</h3>
1. Pls make sure Memory Allocation is greater than 4 GB at least (8G is better) before launch container. </br>
2. After the container launched, several mins would be consumed because of performing SAP HANA installation. </br>

<h3>Quick Start:</h3>
docker run -P -d yexianyi/sap-hana

<h3>JDBC Connection Info###</h3>
Url: jdbc:sap://localhost:39015/ </br>
Database: HXE </br>
Username: system </br>
Password: Pwd+{$container_id} </br>

<h3>Exposed ports</h3>
4390 8090 39013 39015 39018 59013 59014 </br>

<h3>Other info</h3>
<h4>Summary before execution</h4>

HANA, express edition installer : /home/HANA_EXPRESS_20 </br>
  Component(s) to install       : HANA server + Application Function Library </br>
  Host name                     : b9c24eaee6e2 </br>
  HANA system ID                : HXE </br>
  HANA instance number          : 90 </br>
  Master password               : Pwdb9c24eaee6e2 </br>

<h4>Summary before execution: </h4>

SAP HANA Express Edition System Installation </br>
   Installation Parameters </br>
      Remote Execution: ssh </br>
      Use single master password for all users, created during installation: Yes </br>
      Database Isolation: low </br>
      Installation Path: /hana/shared </br>
      Local Host Name: b9c24eaee6e2 </br>
      SAP HANA System ID: HXE </br>
      Instance Number: 90 </br>
      Local Host Worker Group: default </br>
      System Usage: development </br>
      Location of Data Volumes: /hana/shared/data/HXE </br>
      Location of Log Volumes: /hana/shared/log/HXE </br>
      Directory containing custom configurations: /home/HANA_EXPRESS_20/DATA_UNITS/HDB_SERVER_LINUX_X86_64/configurations/custom </br>
      Certificate Host Names: b9c24eaee6e2 -> b9c24eaee6e2 </br>
      System Administrator Home Directory: /usr/sap/HXE/home </br>
      System Administrator Login Shell: /bin/bash </br>
      System Administrator User ID: 1000 </br>
      ID of User Group (sapsys): 79 </br>
      Restart system after machine reboot?: Yes </br>
      Inter Service Communication Mode: ssl </br>
   Software Components </br>
      SAP HANA Database </br>
         Install version 2.00.010.00.1491294693 </br>
         Location: /home/HANA_EXPRESS_20/DATA_UNITS/HDB_SERVER_LINUX_X86_64/server </br>
      SAP HANA AFL (incl.PAL,BFL,OFL,HIE) </br>
         Install version 2.00.010.0000.1491308763 </br>
         Location: /home/HANA_EXPRESS_20/DATA_UNITS/HDB_AFL_LINUX_X86_64/packages </br>
