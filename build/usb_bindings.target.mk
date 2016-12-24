# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := usb_bindings
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=usb_bindings' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk \
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
	-fno-strict-aliasing \
	-std=c++1y \
	-stdlib=libc++

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing \
	-std=c++1y \
	-stdlib=libc++

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I$(srcdir)/src \
	-I$(srcdir)/../nan \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/include/node \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/src \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/uv/include \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/v8/include \
	-I$(srcdir)/libusb/libusb

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=usb_bindings' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk \
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
	-fno-strict-aliasing \
	-std=c++1y \
	-stdlib=libc++

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing \
	-std=c++1y \
	-stdlib=libc++

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I$(srcdir)/src \
	-I$(srcdir)/../nan \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/include/node \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/src \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/uv/include \
	-I/Users/francizidar/projects/armbeep/electron-usb-project/node_modules/electron-rebuild/lib/headers/.node-gyp/iojs-1.4.13/deps/v8/include \
	-I$(srcdir)/libusb/libusb

OBJS := \
	$(obj).target/$(TARGET)/src/node_usb.o \
	$(obj).target/$(TARGET)/src/device.o \
	$(obj).target/$(TARGET)/src/transfer.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/usb.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-framework \
	CoreFoundation \
	-framework \
	IOKit \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-framework \
	CoreFoundation \
	-framework \
	IOKit \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-framework \
	CoreFoundation \
	-framework \
	IOKit \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-framework \
	CoreFoundation \
	-framework \
	IOKit \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/usb_bindings.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/usb_bindings.node: LIBS := $(LIBS)
$(builddir)/usb_bindings.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/usb_bindings.node: TOOLSET := $(TOOLSET)
$(builddir)/usb_bindings.node: $(OBJS) $(builddir)/usb.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/usb_bindings.node
# Add target alias
.PHONY: usb_bindings
usb_bindings: $(builddir)/usb_bindings.node

# Short alias for building this executable.
.PHONY: usb_bindings.node
usb_bindings.node: $(builddir)/usb_bindings.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/usb_bindings.node

