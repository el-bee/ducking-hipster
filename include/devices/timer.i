	IFND	DEVICES_TIMER_I
DEVICES_TIMER_I	SET	1
	IFND	EXEC_IO_I
	INCLUDE	"exec/io.i"
	ENDC
UNIT_MICROHZ	EQU	0
UNIT_VBLANK	EQU	1
TIMERNAME	MACRO
	DC.B	'timer.device',0
	DS.W	0
	ENDM
	rsreset
TIMEVAL	rs.b	0
TV_SECS	rs.l	1
TV_MICRO	rs.l	1
TV_SIZE	rs.w	0
	rsreset
TIMEREQUEST	rs.b	IO_SIZE
IOTV_TIME	rs.b	TV_SIZE
IOTV_SIZE	rs.w	0
	DEVINIT
	DEVCMD	TR_ADDREQUEST
	DEVCMD	TR_GETSYSTIME
	DEVCMD	TR_SETSYSTIME
	ENDC
