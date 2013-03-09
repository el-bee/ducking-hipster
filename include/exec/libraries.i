	IFND	EXEC_LIBRARIES_I
EXEC_LIBRARIES_I	SET	1
	IFND	EXEC_NODES_I
	INCLUDE	"exec/nodes.i"
	ENDC
LIB_VECTSIZE	EQU	6
LIB_RESERVED	EQU	4
LIB_BASE	EQU	$FFFFFFFA
LIB_USERDEF	EQU	LIB_BASE-(LIB_RESERVED*LIB_VECTSIZE)
LIB_NONSTD	EQU	LIB_USERDEF
LIBINIT	MACRO
	IFC	'\1',''
COUNT_LIB	SET	LIB_USERDEF
	ENDC
	IFNC	'\1',''
COUNT_LIB	SET	\1
	ENDC
	ENDM
LIBDEF	MACRO
\1	EQU	COUNT_LIB
COUNT_LIB	SET	COUNT_LIB-LIB_VECTSIZE
	ENDM
	LIBINIT	LIB_BASE
	LIBDEF	LIB_OPEN
	LIBDEF	LIB_CLOSE
	LIBDEF	LIB_EXPUNGE
	LIBDEF	LIB_EXTFUNC
	rsreset
LIB	rs.b	LN_SIZE
LIB_FLAGS	rs.b	1
LIB_pad	rs.b	1
LIB_NEGSIZE	rs.w	1
LIB_POSSIZE	rs.w	1
LIB_VERSION	rs.w	1
LIB_REVISION	rs.w	1
LIB_IDSTRING	rs.l	1
LIB_SUM	rs.l	1
LIB_OPENCNT	rs.w	1
LIB_SIZE	rs.w	0
LIBB_SUMMING	equ	0
LIBF_SUMMING	equ	1<<0
LIBB_CHANGED	equ	1
LIBF_CHANGED	equ	1<<1
LIBB_SUMUSED	equ	2
LIBF_SUMUSED	equ	1<<2
LIBB_DELEXP	equ	3
LIBF_DELEXP	equ	1<<3
CALLLIB	MACRO
	IFGT	NARG-1
	FAIL	!!!
	ENDC
	JSR	\1(A6)
	ENDM
LINKLIB	MACRO
	IFGT	NARG-2
	FAIL	!!!
	ENDC
	MOVE.L	A6,-(SP)
	MOVE.L	\2,A6
	CALLLIB	\1
	MOVE.L	(SP)+,A6
	ENDM
	ENDC
