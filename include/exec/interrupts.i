	IFND	EXEC_INTERRUPTS_I
EXEC_INTERRUPTS_I	SET	1
	IFND	EXEC_NODES_I
	INCLUDE	"exec/nodes.i"
	ENDC
	IFND	EXEC_LISTS_I
	INCLUDE	"exec/lists.i"
	ENDC
	rsreset
IS	rs.b	LN_SIZE
IS_DATA	rs.l	1
IS_CODE	rs.l	1
IS_SIZE	rs.w	0
	rsreset
IV	rs.b	0
IV_DATA	rs.l	1
IV_CODE	rs.l	1
IV_NODE	rs.l	1
IV_SIZE	rs.w	0
SB_SAR	equ	15
SF_SAR	equ	1<<15
SB_TQE	equ	14
SF_TQE	equ	1<<14
SB_SINT	equ	13
SF_SINT	equ	1<<13
	rsreset
SH	rs.b	LH_SIZE
SH_PAD	rs.w	1
SH_SIZE	rs.w	0
SIH_PRIMASK	EQU	$0F0
SIH_QUEUES	EQU	5
INTB_NMI	equ	15
INTF_NMI	equ	1<<15
	ENDC

