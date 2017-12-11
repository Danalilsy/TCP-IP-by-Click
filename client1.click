require(library /home/comnetsii/elements/routerport.click);
//require(library /home/comnetsii/elements/lossyrouterport.click);

define ($in_mac 8a:22:38:8e:80:8e , $out_mac 96:df:fa:fb:57:51 , $dev veth1)

//rp :: LossyRouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac, LOSS 0.9, DELAY 0.2 );
rp::RouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac);

client::BasicTCP(MY_ADDRESS 0, OTHER_ADDRESS 1, DELAY 2);
bc::BasicIP;
client->rp->bc
bc[0]->[0]client;
bc[1]->Discard;
bc[2]->[1]client;
bc[3]->Discard;

