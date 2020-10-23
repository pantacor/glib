LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


LOCAL_MODULE := glib
LOCAL_DESCRIPTION := glib

LOCAL_LIBRARIES := \
	libffi \
	zlib \
	$(NULL)

LOCAL_EXPORT_LDLIBS = -l:libglib-2.0.a

LOCAL_AUTOTOOLS_VERSION := 2.0.4
LOCAL_AUTOTOOLS_CONFIGURE_ARGS := --disable-libmount --without-pcre
LOCAL_AUTOTOOLS_CONFIGURE_ENV := glib_cv_stack_grows=no glib_cv_uscore=no


#LOCAL_CLEAN_DIRS := $(call local-get-build-dir)/usr/share/ $(call local-get-build-dir)/usr/include/

include $(BUILD_AUTOTOOLS)

