<network>
  <name>{{ NETNAME }}</name>
  <forward mode='nat'>
    <nat>
      <port start='1024' end='65535'/>
    </nat>
  </forward>
  <bridge name="{{ BRIDGE_NAME }}" stp='on' delay='0'/>
  <mtu size='{{ MTU }}'/>
  <mac address="{{ MAC }}"/>
  <domain name="$DOMAIN" localOnly='yes'/>
  <ip family='ipv4' address="$IP" prefix='24'>
	  <tftp root='/' server="$TFTP_SERVER"  />
    <dhcp
      <range start="$DHCP_START" end="$DHCP_END" />
      <bootp file="$BOOT_FILE" />
    </dhcp>
  </ip>
</network>