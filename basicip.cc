#include <click/config.h>
#include <click/confparse.hh>
#include <click/error.hh>
#include <click/timer.hh>
#include <click/packet.hh>
#include "basicip.hh" 
#include "packet.hh"

CLICK_DECLS 

BasicIP::BasicIP() {
}

BasicIP::~BasicIP(){
	
}

int BasicIP::initialize(ErrorHandler *errh){
    return 0;
}

void BasicIP::push(int port, Packet *packet) {
	assert(packet);
	struct IP_Header *header = (struct IP_Header *)packet->data();
	if(header->type == 0) {
		output(0).push(packet);
	} else if(header->type == 1) {
		output(1).push(packet);
	} else if(header->type == 2) {
		output(2).push(packet);
	} else if (header->type == 3) {
		output(3).push(packet);
	} else {
		click_chatter("Wrong packet type");
		packet->kill();
	}
}

CLICK_ENDDECLS 
EXPORT_ELEMENT(BasicIP)
