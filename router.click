require(library /home/comnetsii/elements/routerport.click);
define($in_mac1 96:df:fa:fb:57:51, $out_mac1 8a:22:38:8e:80:8e, $dev1 veth2)
define($in_mac2 0e:2e:8e:3d:c5:b2, $out_mac2 7e:e5:b5:77:e2:1e, $dev2 veth3)
rp1 :: RouterPort(DEV $dev1, IN_MAC $in_mac1 , OUT_MAC $out_mac1 );
rp2 :: RouterPort(DEV $dev2, IN_MAC $in_mac2 , OUT_MAC $out_mac2 );


router::BasicRouter(MY_IP 2, OUT_PORT_NUM 2, TOTAL_NODE_NUM 3);
rp1->[0]router[0]->rp1;
rp2->[1]router[1]->rp2;
