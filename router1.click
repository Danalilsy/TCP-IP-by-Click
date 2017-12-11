require(library /home/comnetsii/elements/routerport.click);

define($in_mac1 5a:ab:87:40:4a:9b, $out_mac1 Fa:4e:9a:26:96:1b, $dev1 veth2)
define($in_mac2 Da:e6:0b:1c:a4:d5, $out_mac2 22:60:24:e6:ec:be, $dev2 veth3)
define($in_mac3 Ca:eb:9b:f0:42:77, $out_mac3 12:ab:84:d8:c8:35, $dev3 veth5)

rp1 :: RouterPort(DEV $dev1, IN_MAC $in_mac1 , OUT_MAC $out_mac1);
rp2 :: RouterPort(DEV $dev2, IN_MAC $in_mac2 , OUT_MAC $out_mac2);
rp3 :: RouterPort(DEV $dev3, IN_MAC $in_mac3 , OUT_MAC $out_mac3);

router::BasicRouter(MY_IP 2, OUT_PORT_NUM 3, TOTAL_NODE_NUM 5);
rp1->[0]router[0]->rp1;
rp2->[1]router[1]->rp2;
rp3->[2]router[2]->rp3;

