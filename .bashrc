# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias python=/usr/local/bin/python2.7
alias pylint=/usr/local/bin/pylint

# User specific aliases and functions
# export P4TICKET=/home/ict/.p4tickets
# export ICTREDIST_ROOT=~/depot/AcceleNet/IctRedist
# export NET_SNMP_BIN=/usr/bin
# export P4PORT=10.13.2.18:3002
# export P4USER=p4build_accelenet

export P4PORT=vmaqpproxy01:3002
export P4USER=rlamarre
export P4CLIENT=rlamarre_dev_smoker
export P4CONFIG=p4config.txt
