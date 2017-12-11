require(library /home/comnetsii/elements/routerport.click);

define($in_mac1 22:60:24:e6:ec:be, $out_mac1 Da:e6:0b:1c:a4:d5, $dev1 veth4)
define($in_mac2 C6:3a:ef:33:70:5f, $out_mac2 2a:22:11:07:fb:4b, $dev2 veth7)


rp1 :: RouterPort(DEV $dev1, IN_MAC $in_mac1 , OUT_MAC $out_mac1);
rp2 :: RouterPort(DEV $dev2, IN_MAC $in_mac2 , OUT_MAC $out_mac2);


router::BasicRouter(MY_IP 3, OUT_PORT_NUM 2, TOTAL_NODE_NUM 5);
rp1->[0]router[0]->rp1;
rp2->[1]router[1]->rp2;


