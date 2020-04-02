FROM ubuntu:18.04

RUN apt update; apt install -y libtiff5 openssh-server binutils libatk1.0-0 \
                pcscd libharfbuzz0b libgdk-pixbuf2.0-0 libgtk-3-0 libxss1 \
                libcairo2 libgtk2.0-0 libatk-bridge2.0-0 libxkbfile1

ADD https://download3.vmware.com/software/view/viewclients/CART20FQ4/VMware-Horizon-Client-5.3.0-15208949.x64.bundle /vmware.bundle

RUN chmod +x /vmware.bundle; /vmware.bundle --eulas-agreed --required

RUN useradd -ms /bin/bash vmuser

COPY init.sh /

ENTRYPOINT [ "/init.sh" ]
