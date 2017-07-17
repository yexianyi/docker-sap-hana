# yexianyi/sap-hana [![](https://images.microbadger.com/badges/image/yexianyi/sap-hana:install.svg)](https://microbadger.com/images/yexianyi/sap-hana:install "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/yexianyi/sap-hana:install.svg)](https://microbadger.com/images/yexianyi/sap-hana:install "Get your own version badge on microbadger.com")

<h3>Notification:</h3>
0. Since there are some problems on "latest" tag, pls checkout "install" tag, and install SAP HANA in manully by invoking /home/setup_hxe.sh </br>
1. Before calling "setup_hxe.sh", pls make sure your Docker Platform has enough compute resources. (Preferred requirement is 16GB Memory and 4 CPU cores) </br> 
   REMEMBER: The memory mentioned here does NOT mean the param "--memory=" you set in "docker run" command, but the entire Docker Platform's which could be configured in Docker Platform Preferences</br>

<h3>Quick Start:</h3>
1. docker run -d yexianyi/sap-hana:install </br>
2. ./setup_hxe.sh
