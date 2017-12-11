require(library /home/comnetsii/elements/routerport.click);
//require(library /home/comnetsii/elements/lossyrouterport.click);

define ($in_mac Fa:4e:9a:26:96:1b , $out_mac  5a:ab:87:40:4a:9b, $dev veth1)

//rp :: LossyRouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac, LOSS 0.9, DELAY 0.2 );
rp::RouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac);

client::BasicTCP(MY_ADDRESS 0, OTHER_ADDRESS 1, DELAY 2);
bc::BasicIP;
client->rp->bc
bc[0]->[0]client;
bc[1]->Discard;
bc[2]->[1]client;
bc[3]->Discard;

