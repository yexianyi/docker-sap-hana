# This docker file is for creating Opensuse42 + JDK1.8
FROM yexianyi/sap-hana:install

MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

WORKDIR /home
# Install essential components for installing SAP HANA
COPY install.exp install.exp
COPY answerfile answerfile
RUN  zypper install -y expect \
  && zypper install -y numactl \
  && zypper install -y libltdl7 \
  && zypper install -y hostname \
  
  # Install SAP HANA 2.0 EXPRESSION
  #&& echo "exit(0)" > HANA_EXPRESS_20/DATA_UNITS/HDB_SERVER_LINUX_X86_64/server/HanaHwCheck.py \
  #&& chmod 755 HANA_EXPRESS_20/DATA_UNITS/HDB_SERVER_LINUX_X86_64/server/HanaHwCheck.py \
  #&& expect install.exp \
   && cat answerfile | ./setup_hxe.sh \
  
  #&& zypper clean \
  #&& rm -rf /var/cache/zypp/* \
  #&& rm -rf /root/.cache/ \
  #&& rm -rf *\
  
EXPOSE 4390 8090 39013 39015 39018 59013 59014
#CMD ["expect","/home/install.exp"]
