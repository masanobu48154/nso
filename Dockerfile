FROM ubuntu:20.04

COPY nso-5.5.linux.x86_64.signed.bin /root/
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends python3 openjdk-11-jdk vim openssh-server ant python3-paramiko make && cd /root/ && bash /root/nso-5.5.linux.x86_64.signed.bin  ; exit 0
RUN cd /root/ && python3 cisco_x509_verify_release.py3 -e tailf.cer -i nso-5.5.linux.x86_64.installer.bin -s nso-5.5.linux.x86_64.installer.bin.signature -v dgst -sha512 && bash nso-5.5.linux.x86_64.installer.bin --local-install nso-5.5 && source ./nso-5.5/ncsrc

ENTRYPOINT ["/bin/bash"]
