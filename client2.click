require(library /home/comnetsii/elements/routerport.click);

define($in_mac 7e:e5:b5:77:e2:1e, $out_mac 0e:2e:8e:3d:c5:b2, $dev veth4)

//rp :: LossyRouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac, LOSS 0.9, DELAY 0.2 );
rp::RouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac);

client::BasicTCP(MY_ADDRESS 1, OTHER_ADDRESS 0);
bc::BasicIP;
client->rp->bc
bc[0]->[0]client;
bc[1]->Discard;
bc[2]->[1]client;
bc[3]->Discard;

