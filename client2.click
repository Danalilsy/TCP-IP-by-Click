require(library /home/comnetsii/elements/routerport.click);

define($in_mac 	A2:8a:66:3e:58:df, $out_mac 8a:ff:3b:d2:95:9a, $dev veth10)

//rp :: LossyRouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac, LOSS 0.9, DELAY 0.2 );
rp::RouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac);

client::BasicTCP(MY_ADDRESS 1, OTHER_ADDRESS 0);
bc::BasicIP;
client->rp->bc
bc[0]->[0]client;
bc[1]->Discard;
bc[2]->[1]client;
bc[3]->Discard;

