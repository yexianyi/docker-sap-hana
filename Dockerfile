# This docker file is for creating CentOS7 + JDK1.8
FROM yexianyi/oracle-jdk:centos7

ARG MEGATOOLS_FILE_NAME=megatools-1.9.91-2.el7.nux.x86_64.rpm
ARG MEGATOOLS_DOWNLOAD_LINK=https://raw.githubusercontent.com/yexianyi/docker-assets/tools/$MEGATOOLS_FILE_NAME
ARG SAP_HANA_VERSION=HANA_EXPRESS_20
ARG SAP_HANA_MASTER_PWD=Hawaii123
ARG SAP_INSTALL_PACKAGE='https://mega.co.nz/#!5qhmGLpL!GRYnFEVeuDTCVDVZRmTBO1KjhfN2iJyMfLvcEIEvEXE'
ARG SAP_INSTALL_FILE_NAME=hxe.tgz
ARG SAP_INSTALL_PATH=/opt/sap/
ARG SAP_INSTSLL_TEMP=$SAP_INSTALL_PATH/temp

#ENV JAVA_HOME=$JDK_INSTALL_PATH/jdk1.8.0_131
#ENV PATH=$JAVA_HOME/bin:$PATH


MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

# Install utils
RUN  yum -y update \
  && yum install -y fuse-libs \
  && yum install -y glib-networking \
  && wget $MEGATOOLS_DOWNLOAD_LINK \
  && rpm -Uvh MEGATOOLS_FILE_NAME \
  
  # Install SAP HANA 2.0 EXPRESSION
  && mkdir $SAP_INSTALL_PATH \
  && mkdir $SAP_INSTSLL_TEMP \
  && cd $SAP_INSTSLL_TEMP \
	&& megadl $SAP_INSTALL_PACKAGE \
	&& tar -xzvf $SAP_INSTALL_FILE_NAME \
  && ./setup_hxe.sh \
  
  
  && cd $SAP_INSTALL_PATH \
  && rm -f -R $SAP_INSTSLL_TEMP \
