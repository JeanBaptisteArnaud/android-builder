# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

NDK_DEBUG := 0

include $(CLEAR_VARS)

LOCAL_MODULE    := cogvm

PLAT_DIR        := ../..
COG_BUILD_DIR   := ../../../build
COG_SRC_DIR     := ../../../src

COG_INCLUDE_DIRS :=
COG_CFLAGS :=
LOCAL_SRC_FILES :=

# Include the list of source files with their respectable directories generated by
# the Cmake-VMMaker during sources generation.

include $(COG_BUILD_DIR)/cogdirs.mk
include $(COG_BUILD_DIR)/cogsources.mk

LOCAL_CFLAGS += -DLSB_FIRST=0 -DSQUEAK_BUILTIN_PLUGIN \
		$(COG_INCLUDE_DIRS) $(COG_CFLAGS) -DAVOID_OPENGL_H \
		-DSTACKVM -DNO_VM_PROFILE -DFT2_BUILD_LIBRARY

LOCAL_LDLIBS += -llog
include $(BUILD_SHARED_LIBRARY)



