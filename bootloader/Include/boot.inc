;------kernel and loader--------
LOADER_BASE_ADDR equ 0x900 ;loader 在内存上的位置
LOADER_START_SECTOR equ 0x2 ;loader在硬盘上的逻辑扇区

;-------------------- os data --------------------------
CURSOR_ADDR  equ  0x500
MEM_SIZE_ADDR  equ 0x502
DIS_PAGE equ 0x506
VIDEO_MODE equ 0x508
WINDOW_WIDTH equ 0x509
VIDEO_MEM    equ 0x50C
DIS_STATUS  equ 0x50D
GCARD_CHR  equ 0x50E
HD0_DATA  equ 0x510
HD1_DATA  equ 0x520
;-------------------- gdt--------------------------------

DESC_G_4K equ 1_00000000000000000000000b 
DESC_D_32 equ 1_0000000000000000000000b 
DESC_L    equ 0_000000000000000000000b  
DESC_AVL  equ 0_00000000000000000000b    
                                         
DESC_LIMIT_CODE2  equ  1111_0000000000000000b  
DESC_LIMIT_DATA2  equ  DESC_LIMIT_CODE2       
DESC_LIMIT_VIDEO2 equ	0000_0000000000000000b
   
DESC_P            equ 	1_000000000000000b	
DESC_DPL_0        equ  00_0000000000000b  
DESC_DPL_1        equ  01_0000000000000b
DESC_DPL_2        equ  10_0000000000000b
DESC_DPL_3        equ  11_0000000000000b

DESC_S_sys        equ  0_000000000000b 
DESC_S_CODE       equ  1_000000000000b
DESC_S_DATA       equ  DESC_S_CODE


DESC_TYPE_CODE    equ  1000_00000000b
;x=1 e=0 r=0 a=0
DESC_TYPE_DATA    equ  0010_00000000b
;x=0 e=0 w=1 a=0


DESC_CODE_HIGH4   equ  (0x00<<24) + DESC_G_4K + DESC_D_32 + \
DESC_L + DESC_AVL + DESC_LIMIT_CODE2 + \
DESC_P + DESC_DPL_0 + DESC_S_CODE + DESC_TYPE_CODE + 0X00

DESC_DATA_HIGH4   equ  (0x00<<24) + DESC_G_4K + DESC_D_32 + \
DESC_L + DESC_AVL + DESC_LIMIT_DATA2 + \
DESC_P + DESC_DPL_0 + DESC_S_DATA + DESC_TYPE_DATA + 0X00

DESC_VIDEO_HIGH4   equ (0x00<<24) + DESC_G_4K + DESC_D_32 + \
DESC_L + DESC_AVL + DESC_LIMIT_VIDEO2 + \
DESC_P + DESC_DPL_0 + DESC_S_DATA + DESC_TYPE_DATA + 0X0b  

;-------------------- selector attribute--------------------------------
RPL0    equ 00b
RPL1    equ 01b
RPL2    equ 10b
RPL3    equ 11b
TI_GDT  equ 0_00b
TI_LDT  equ 1_00b

;-------------------page base address--------------------------------------
PAGE_DIR_TABLE_POS equ 0x100000 
;------------------- page attribute -------------------------------
PG_P    equ 1b
PG_RW_R equ 00b
PG_RW_W equ 10b
PG_US_S equ 000b
PG_US_U equ 100b
;-----------------  kernel -------------------------------

KERNEL_BIN_SECTOR    equ  0x9
KERNEL_BIN_BASE_ADDR equ  0x70000

PT_NULL              equ  0x0
