FROM rockylinux/rockylinux:8.4
RUN yum -y install https://sxauroratsubasa.sakura.ne.jp/repos/TSUBASA-soft-release-2.7-1.noarch.rpm && \
    yum -y groupinstall -x *2.11* ve-container nec-sdk-runtime nec-mpi-runtime && \
    yum -y install https://github.com/frovedis/frovedis/releases/download/v1.2.0/frovedis-1.2.0-1.el8.x86_64.rpm && \
    yum -y install man && \
    yum clean all
RUN pip3 install --no-cache-dir scipy pandas scikit-learn
CMD ["/bin/bash"]
