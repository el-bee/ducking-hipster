	IFND	DEVICES_SERIAL_I
DEVICES_SERIAL_I	SET	1
	IFND	EXEC_STRINGS_I
	INCLUDE	'exec/strings.i'
	ENDC
	IFND	EXEC_IO_I
	INCLUDE	'exec/io.i'
	ENDC
SER_CTL	EQU	$1113
SER_DBAUD	EQU	9600
SDCMD_QUERY	EQU	CMD_NONSTD
SDCMD_BREAK	EQU	CMD_NONSTD+1
SDCMD_SETPARAMS	EQU	CMD_NONSTD+2
SER_DEVFINISH	EQU	CMD_NONSTD+2
SERIALNAME:	MACRO
	STRING	'serial.device'
	ENDM
SERB_XDISABLED	equ	7
SERF_XDISABLED	equ	1<<7
SERB_EOFMODE	equ	6
SERF_EOFMODE	equ	1<<6
SERB_SHARED	equ	5
SERF_SHARED	equ	1<<5
SERB_RAD_BOOGIE	equ	4
SERF_RAD_BOOGIE	equ	1<<4
SERB_QUEUEDBRK	equ	3
SERF_QUEUEDBRK	equ	1<<3
SERB_7WIRE	equ	2
SERF_7WIRE	equ	1<<2
SERB_PARTY_ODD	equ	1
SERF_PARTY_ODD	equ	1<<1
SERB_PARTY_ON	equ	0
SERF_PARTY_ON	equ	1<<0
IOSERB_QUEUED	equ	6
IOSERF_QUEUED	equ	1<<6
IOSERB_ABORT	equ	5
IOSERF_ABORT	equ	1<<5
IOSERB_ACTIVE	equ	4
IOSERF_ACTIVE	equ	1<<4
IOSTB_XOFFREAD	equ	4
IOSTF_XOFFREAD	equ	1<<4
IOSTB_XOFFWRITE	equ	3
IOSTF_XOFFWRITE	equ	1<<3
IOSTB_READBREAK	equ	2
IOSTF_READBREAK	equ	1<<2
IOSTB_WROTEBREAK	equ	1
IOSTF_WROTEBREAK	equ	1<<1
IOSTB_OVERRUN	equ	0
IOSTF_OVERRUN	equ	1<<0
SEXTB_MSPON	equ	1
SEXTF_MSPON	equ	1<<1
SEXTB_MARK	equ	0
SEXTF_MARK	equ	1<<0
	rsreset
TERMARRAY	rs.b	0
TERMARRAY_0	rs.l	1
TERMARRAY_1	rs.l	1
TERMARRAY_SIZE	rs.w	0
	rsreset
IOEXTSER	rs.b	IOSTD_SIZE
IO_CTLCHAR	rs.l	1
IO_RBUFLEN	rs.l	1
IO_EXTFLAGS	rs.l	1
IO_BAUD	rs.l	1
IO_BRKTIME	rs.l	1
IO_TERMARRAY	rs.b	TERMARRAY_SIZE
IO_READLEN	rs.b	1
IO_WRITELEN	rs.b	1
IO_STOPBITS	rs.b	1
IO_SERFLAGS	rs.b	1
IO_STATUS	rs.w	1
IOEXTSER_SIZE	rs.w	0
SerErr_DevBusy	EQU	1
SerErr_BaudMismatch	EQU	2
SerErr_InvBaud	EQU	3
SerErr_BufErr	EQU	4
SerErr_InvParam	EQU	5
SerErr_LineErr	EQU	6
SerErr_NotOpen	EQU	7
SerErr_PortReset	EQU	8
SerErr_ParityErr	EQU	9
SerErr_InitErr	EQU	10
SerErr_TimerErr	EQU	11
SerErr_BufOverflow	EQU	12
SerErr_NoDSR	EQU	13
SerErr_NoCTS	EQU	14
SerErr_DetectedBreak	EQU	15
	ENDC
