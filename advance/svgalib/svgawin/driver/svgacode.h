#ifndef __SVGACODE_H
#define __SVGACODE_H

#define FILE_DEVICE_SVGALIB  0x00008000

#define SVGALIB_IOCTL_INDEX  0x800

#define IOCTL_SVGALIB_MAP CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+0, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_UNMAP CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+1, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_PORT_READ CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+2, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_PORT_WRITE CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+3, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_PCI_BUS CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+4, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_PCI_READ CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+5, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_PCI_WRITE CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+6, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_GIVEIO_ON CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+7, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_GIVEIO_OFF CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+8, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_TOTALIO_ON CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+9, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_SVGALIB_TOTALIO_OFF CTL_CODE(FILE_DEVICE_SVGALIB, SVGALIB_IOCTL_INDEX+10, METHOD_BUFFERED, FILE_ANY_ACCESS)

typedef struct {
	ULONG port;
	ULONG size;
} SVGALIB_PORT_READ_IN;

typedef struct {
	ULONG data;
} SVGALIB_PORT_READ_OUT;

typedef struct {
	ULONG port;
	ULONG size;
	ULONG data;
} SVGALIB_PORT_WRITE_IN;

typedef struct {
	ULONG bus;
} SVGALIB_PCI_BUS_OUT;

typedef struct {
	ULONG bus_device_func;
	ULONG offset;
	ULONG size;
} SVGALIB_PCI_READ_IN;

typedef struct {
	ULONG data;
} SVGALIB_PCI_READ_OUT;

typedef struct {
	ULONG bus_device_func;
	ULONG size;
	ULONG offset;
	ULONG data;
} SVGALIB_PCI_WRITE_IN;

typedef struct {
	PHYSICAL_ADDRESS address; /* Bus-relative address */
	ULONG bus; /* Bus number */
	ULONG size; /* Length of section to map */
} SVGALIB_MAP_IN;

typedef struct {
	VOID* address;
} SVGALIB_MAP_OUT;

typedef struct {
	VOID* address;
} SVGALIB_UNMAP_IN;

#endif
