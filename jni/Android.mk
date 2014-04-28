LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := pharoVM

LOCAL_C_INCLUDES = /builds/workspace/ARM-Android/platforms/android/vm 
LOCAL_C_INCLUDES += /builds/workspace/ARM-Android/src/vm 
LOCAL_C_INCLUDES += /builds/workspace/ARM-Android/platforms/android/vm 
LOCAL_C_INCLUDES += /builds/workspace/ARM-Android/build
TARGET_ARCH = arm

/builds/workspace/ARM-Android/build/version.c:
	/builds/workspace/ARM-Android/platforms/android/config/verstamp /builds/workspace/ARM-Android/build/version.c gcc

LOCAL_SRC_FILES = /builds/workspace/ARM-Android/build/version.c
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/src/vm/gcc3x-interp.c
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/aio.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/debug.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/osExports.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidCharConv.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidExternalPrims.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidEvtBeat.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidEvtMain.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidMemory.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidVMProfile.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidSemaphores.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidSoundNull.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/sqAndroidDisplay.c
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/vm/sqHeapMap.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/vm/sqNamedPrims.c 
LOCAL_SRC_FILES += /builds/workspace/ARM-Android/platforms/android/vm/vm/sqVirtualMachine.c

include /builds/workspace/ARM-Android/build/AndroidPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/BitBltPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/B2DPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/BMPReadWriterPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/CroquetPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/DSAPrims/cogsources.mk
include /builds/workspace/ARM-Android/build/FFTPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/FileCopyPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/FilePlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/FloatArrayPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/FloatMathPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/JoystickTabletPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/JPEGReaderPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/LargeIntegers/cogsources.mk
include /builds/workspace/ARM-Android/build/Matrix2x3Plugin/cogsources.mk
include /builds/workspace/ARM-Android/build/LocalePlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/RePlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/SecurityPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/JPEGReadWriter2Plugin/cogsources.mk
include /builds/workspace/ARM-Android/build/SocketPlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/MiscPrimitivePlugin/cogsources.mk
include /builds/workspace/ARM-Android/build/ZipPlugin/cogsources.mk
 
include $(BUILD_SHARED_LIBRARY)