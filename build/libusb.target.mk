# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libusb
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=libusb' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DENABLE_LOGGING=1' \
	'-DDEFAULT_VISIBILITY=' \
	'-DHAVE_GETTIMEOFDAY=1' \
	'-DHAVE_POLL_H=1' \
	'-DHAVE_SYS_TIME_H=1' \
	'-DLIBUSB_DESCRIBE="1.0.17"' \
	'-DPOLL_NFDS_TYPE=nfds_t' \
	'-DTHREADS_POSIX=1' \
	'-DOS_DARWIN=1' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/include/node \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/src \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/uv/include \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/v8/include \
	-I$(srcdir)/libusb_config \
	-I$(srcdir)/libusb/libusb \
	-I$(srcdir)/libusb/libusb/os

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=libusb' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DENABLE_LOGGING=1' \
	'-DDEFAULT_VISIBILITY=' \
	'-DHAVE_GETTIMEOFDAY=1' \
	'-DHAVE_POLL_H=1' \
	'-DHAVE_SYS_TIME_H=1' \
	'-DLIBUSB_DESCRIBE="1.0.17"' \
	'-DPOLL_NFDS_TYPE=nfds_t' \
	'-DTHREADS_POSIX=1' \
	'-DOS_DARWIN=1'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/include/node \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/src \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/uv/include \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/v8/include \
	-I$(srcdir)/libusb_config \
	-I$(srcdir)/libusb/libusb \
	-I$(srcdir)/libusb/libusb/os

OBJS := \
	$(obj).target/$(TARGET)/libusb/libusb/core.o \
	$(obj).target/$(TARGET)/libusb/libusb/descriptor.o \
	$(obj).target/$(TARGET)/libusb/libusb/hotplug.o \
	$(obj).target/$(TARGET)/libusb/libusb/io.o \
	$(obj).target/$(TARGET)/libusb/libusb/strerror.o \
	$(obj).target/$(TARGET)/libusb/libusb/sync.o \
	$(obj).target/$(TARGET)/libusb/libusb/os/poll_posix.o \
	$(obj).target/$(TARGET)/libusb/libusb/os/threads_posix.o \
	$(obj).target/$(TARGET)/libusb/libusb/os/darwin_usb.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug :=

LDFLAGS_Release := \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release :=

LIBS :=

$(builddir)/usb.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/usb.a: LIBS := $(LIBS)
$(builddir)/usb.a: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/usb.a: TOOLSET := $(TOOLSET)
$(builddir)/usb.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/usb.a
# Add target alias
.PHONY: libusb
libusb: $(builddir)/usb.a

# Add target alias to "all" target.
.PHONY: all
all: libusb

# Add target alias
.PHONY: libusb
libusb: $(builddir)/usb.a

# Short alias for building this static library.
.PHONY: usb.a
usb.a: $(builddir)/usb.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/usb.a
