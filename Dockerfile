# This docker file is for creating Opensuse42 + JDK1.8
FROM yexianyi/oracle-jdk:opensuse42

ARG SAP_HANA_VERSION=HANA_EXPRESS_20
ARG SAP_HANA_MASTER_PWD=Hawaii123
ARG SAP_INSTALL_PACKAGE='https://mega.co.nz/#!5qhmGLpL!GRYnFEVeuDTCVDVZRmTBO1KjhfN2iJyMfLvcEIEvEXE'
ARG SAP_INSTALL_FILE_NAME=hxe.tgz
ARG SAP_INSTALL_PATH=/opt/sap/
ARG SAP_INSTSLL_TEMP=$SAP_INSTALL_PATH/temp

MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

# Install utils
RUN  zypper addrepo http://download.opensuse.org/repositories/network:utilities/openSUSE_Leap_42.2/network:utilities.repo \
  && zypper --non-interactive --gpg-auto-import-keys refresh \
  && zypper install -y megatools \
  
  # Install SAP HANA 2.0 EXPRESSION
  && mkdir $SAP_INSTALL_PATH \
  && mkdir $SAP_INSTSLL_TEMP \
  && cd $SAP_INSTSLL_TEMP \
	&& megadl $SAP_INSTALL_PACKAGE \
	&& tar -xzvf $SAP_INSTALL_FILE_NAME \
  #&& ./setup_hxe.sh \
  
  
  #&& cd $SAP_INSTALL_PATH \
  #&& rm -f -R $SAP_INSTSLL_TEMP \
