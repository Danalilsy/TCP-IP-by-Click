require(library /home/comnetsii/elements/routerport.click);
define($in_mac1 4e:43:ff:5c:79:19, $out_mac1 46:f1:bb:1d:fd:11, $dev1 veth2)
define($in_mac2 3a:1d:0d:3d:fe:60, $out_mac2 4a:f5:c4:cd:41:71, $dev2 veth3)
rp1 :: RouterPort(DEV $dev1, IN_MAC $in_mac1 , OUT_MAC $out_mac1 );
rp2 :: RouterPort(DEV $dev2, IN_MAC $in_mac2 , OUT_MAC $out_mac2 );


router::BasicRouter(MY_IP 1, OUT_PORT_NUM 2, TOTAL_NODE_NUM 3);
rp1->[0]router[0]->rp1;
rp2->[1]router[1]->rp2;
