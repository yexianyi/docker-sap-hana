# This docker file is for creating CentOS7 + JDK1.8
FROM yexianyi/oracle-jdk:centos7

ARG SAP_HANA_VERSION=HANA_EXPRESS_20
ARG SAP_HANA_MASTER_PWD=Hawaii123
ARG SAP_INSTALL_FILE=hxe.tgz
ARG SAP_INSTALL_PATH=/opt/sap/
ARG SAP_INSTSLL_TEMP=$SAP_INSTALL_PATH/temp

#ENV JAVA_HOME=$JDK_INSTALL_PATH/jdk1.8.0_131
#ENV PATH=$JAVA_HOME/bin:$PATH


MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

# Install SAP HANA 2.0 EXPRESSION
RUN mkdir $SAP_INSTALL_PATH \
  && mkdir $SAP_INSTSLL_TEMP \
  && cd $SAP_INSTSLL_TEMP \
	&& wget https://media.githubusercontent.com/media/yexianyi/docker-assets/SAP_HANA/$SAP_INSTALL_FILE \
	&& tar -xzvf $SAP_INSTALL_FILE \
  && ./setup_hxe.sh \
  
  
  && cd $SAP_INSTALL_PATH \
	&& rm -f -R $SAP_INSTSLL_TEMP \
