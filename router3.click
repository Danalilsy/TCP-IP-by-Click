require(library /home/comnetsii/elements/routerport.click);

define($in_mac1 12:ab:84:d8:c8:35, $out_mac1 Ca:eb:9b:f0:42:77, $dev1 veth6)
define($in_mac2 2a:22:11:07:fb:4b, $out_mac2 C6:3a:ef:33:70:5f, $dev2 veth8)
define($in_mac3 8a:ff:3b:d2:95:9a, $out_mac3 A2:8a:66:3e:58:df, $dev3 veth9)

rp1 :: RouterPort(DEV $dev1, IN_MAC $in_mac1 , OUT_MAC $out_mac1);
rp2 :: RouterPort(DEV $dev2, IN_MAC $in_mac2 , OUT_MAC $out_mac2);
rp3 :: RouterPort(DEV $dev3, IN_MAC $in_mac3 , OUT_MAC $out_mac3);

router::BasicRouter(MY_IP 4, OUT_PORT_NUM 3, TOTAL_NODE_NUM 5);
rp1->[0]router[0]->rp1;
rp2->[1]router[1]->rp2;
rp3->[2]router[2]->rp3;

