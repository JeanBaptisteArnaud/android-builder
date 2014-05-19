LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := pharoVM

LOCAL_C_INCLUDES = /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm 
LOCAL_C_INCLUDES += /Users/jbarnaud/Documents/Repository/androidBuilder/srcVM/vm 
LOCAL_C_INCLUDES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/Cross/vm
LOCAL_C_INCLUDES += /Users/jbarnaud/Documents/Repository/androidBuilder/build

LOCAL_CFLAGS += -DLSB_FIRST=0 -DAVOID_OPENGL_H -DSTACKVM -DNO_VM_PROFILE -DFT2_BUILD_LIBRARY -DITIMER_HEARTBEAT=1 -DANDROID

LOCAL_LDLIBS += -llog
TARGET_ARCH = arm

/Users/jbarnaud/Documents/Repository/androidBuilder/build/version.c:
	/Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/config/verstamp /Users/jbarnaud/Documents/Repository/androidBuilder/build/version.c gcc



LOCAL_SRC_FILES = /Users/jbarnaud/Documents/Repository/androidBuilder/build/version.c
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqAndroidNativeHook.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/aio.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/debug.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/osExports.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixCharConv.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixExternalPrims.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixHeartbeat.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixMain.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixMemory.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixVMProfile.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/sqUnixThreads.c 
#LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/SqSound.c 
#LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/android/vm/SqDisplay.c
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/Cross/vm/sqExternalSemaphores.c
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/Cross/vm/sqTicker.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/Cross/vm/sqHeapMap.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/Cross/vm/sqNamedPrims.c 
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/platforms/Cross/vm/sqVirtualMachine.c
LOCAL_SRC_FILES += /Users/jbarnaud/Documents/Repository/androidBuilder/srcVM/vm/gcc3x-interp.c

# VM DISPLAY X11
#TODO

# VM SOUND ALSA
#TODO

#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/AndroidPlugin/cogsources.mk
include /Users/jbarnaud/Documents/Repository/androidBuilder/build/BitBltPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/B2DPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/BMPReadWriterPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/CroquetPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/DSAPrims/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/FFTPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/FileCopyPlugin/cogsources.mk
include /Users/jbarnaud/Documents/Repository/androidBuilder/build/FilePlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/FloatArrayPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/FloatMathPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/JoystickTabletPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/JPEGReaderPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/LargeIntegers/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/Matrix2x3Plugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/LocalePlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/RePlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/SecurityPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/JPEGReadWriter2Plugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/SocketPlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/MiscPrimitivePlugin/cogsources.mk
#include /Users/jbarnaud/Documents/Repository/androidBuilder/build/ZipPlugin/cogsources.mk
 
 include $(BUILD_SHARED_LIBRARY)
