# This docker file is for creating Opensuse42 + JDK1.8
FROM yexianyi/oracle-jdk:opensuse42

ARG SAP_HANA_VERSION=HANA_EXPRESS_20
ARG SAP_INSTALL_PACKAGE='https://mega.co.nz/#!5qhmGLpL!GRYnFEVeuDTCVDVZRmTBO1KjhfN2iJyMfLvcEIEvEXE'
ARG SAP_INSTALL_FILE_NAME=hxe.tgz

MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

WORKDIR /home
# Install essential components for installing SAP HANA
COPY install.exp install.exp
RUN  zypper addrepo http://download.opensuse.org/repositories/network:utilities/openSUSE_Leap_42.2/network:utilities.repo \
  && zypper --non-interactive --gpg-auto-import-keys refresh \
  && zypper install -y expect \
  && zypper install -y megatools \
  && zypper install -y numactl \
  && zypper install -y libltdl7 \
  && zypper install -y hostname \
  
  # Install SAP HANA 2.0 EXPRESSION
  && megadl $SAP_INSTALL_PACKAGE \
  && tar -xzvf $SAP_INSTALL_FILE_NAME \
  
  && zypper clean \
  && rm -rf /var/cache/zypp/* \
  && rm -rf /root/.cache/ \
#  && rm -rf *\
  
EXPOSE 4390 8090 39013 39015 39018 59013 59014
CMD ["expect /home/install.exp"]
