#
#  This is an example of a configuration script you may want to run manually or automatically if you don't want to integrate the ethernet patch
#
#  It is of course configuration dependent. This one would work well on tha private network.
#  Ethernet patch essentialy eliminates the need for that, but you may want to use this from command line to set your own static parameters.
#
ifconfig eth0 192.168.1.111 netmask 255.255.0.0
route add default gw 192.168.1.1 dev eth0

setprop net.dns1 10.1.1.12
setprop net.dns2 10.1.1.13
setprop net.dns3 8.8.4.4
