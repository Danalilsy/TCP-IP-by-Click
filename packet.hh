#ifndef packets_h
#define packets_h

typedef enum {
	DATA = 0,
	HELLO,
    ACK,
	EDGE,
    SYN,
    SYNACK,
    FIN
} packet_types;

struct IP_Header{
    uint8_t type;
    uint8_t sequence;
    uint8_t source;
    uint8_t destination;
    uint32_t size;
	bool ECN;
};

struct TCP_Header{
    uint32_t offset;
    uint32_t size;
    uint8_t more_packets;
};

#endif /* packets_h */
