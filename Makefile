#############################################################################
# Makefile for building: rv_system0
# Generated by qmake (3.0) (Qt 5.6.2)
# Project:  rv_system0.pro
# Template: app
# Command: /opt/gelin2-17.11-imx6/host/bin/qmake CONFIG+=debug_and_release -o Makefile rv_system0.pro
#############################################################################

MAKEFILE      = Makefile

first: release
install: release-install
uninstall: release-uninstall
QMAKE         = /opt/gelin2-17.11-imx6/host/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = rv_system01.0.0
DISTDIR = /home/htldev/dev/rv_system/rv_system0/workspace/rv_system0/.build/debug/obj/rv_system01.0.0
SUBTARGETS    =  \
		release \
		debug


release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: rv_system0.pro /opt/gelin2-17.11-imx6/host/usr/mkspecs/devices/linux-buildroot-g++/qmake.conf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/spec_pre.prf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/unix.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/linux.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/sanitize.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/gcc-base.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/gcc-base-unix.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/g++-base.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/common/g++-unix.conf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/qdevice.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/device_config.prf \
		/opt/gelin2-17.11-imx6/host/mkspecs/devices/common/linux_device_pre.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/devices/linux-buildroot-g++/arch.conf \
		/opt/gelin2-17.11-imx6/host/mkspecs/devices/common/linux_device_post.conf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/qconfig.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_core.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_core_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_dbus.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_enginio.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_enginio_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_gui.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_network.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_network_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_nfc.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_opengl.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qml.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quick.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickwidgets.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_script.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_script_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sensors.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_serialport.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sql.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_svg.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_testlib.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkit.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkit_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_websockets.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_websockets_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_widgets.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xml.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_zlib_private.pri \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt_functions.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt_config.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/devices/linux-buildroot-g++/qmake.conf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/spec_post.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exclusive_builds.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/default_pre.prf \
		../GESys/include.pro \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/resolve_config.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exclusive_builds_post.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/default_post.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/link_pkgconfig.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/warn_on.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/resources.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/moc.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/unix/opengl.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/unix/thread.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/file_copies.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/testcase_targets.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exceptions.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/yacc.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/lex.prf \
		/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/silent.prf \
		rv_system0.pro \
		../GESys/libGESys.prl \
		/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Quick.prl \
		/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Gui.prl \
		/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Qml.prl \
		/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Network.prl \
		/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Core.prl
	$(QMAKE) CONFIG+=debug_and_release -o Makefile rv_system0.pro
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/spec_pre.prf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/unix.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/linux.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/sanitize.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/gcc-base.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/gcc-base-unix.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/g++-base.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/common/g++-unix.conf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/qdevice.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/device_config.prf:
/opt/gelin2-17.11-imx6/host/mkspecs/devices/common/linux_device_pre.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/devices/linux-buildroot-g++/arch.conf:
/opt/gelin2-17.11-imx6/host/mkspecs/devices/common/linux_device_post.conf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/qconfig.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bluetooth.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bluetooth_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bootstrap_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_concurrent.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_concurrent_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_core.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_core_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_dbus.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_dbus_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_enginio.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_enginio_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_gui.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_gui_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimedia.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimedia_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimediawidgets.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_network.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_network_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_nfc.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_nfc_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_opengl.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_opengl_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_openglextensions.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_openglextensions_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_platformsupport_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_printsupport.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_printsupport_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qml.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qml_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmltest.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmltest_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quick.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quick_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickparticles_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickwidgets.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_script.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_script_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_scripttools.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_scripttools_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sensors.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sensors_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_serialport.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_serialport_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sql.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sql_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_svg.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_svg_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_testlib.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_testlib_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkit.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkit_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkitwidgets.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_websockets.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_websockets_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_widgets.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_widgets_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_x11extras.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_x11extras_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xml.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xml_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xmlpatterns.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_zlib_private.pri:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt_functions.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt_config.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/devices/linux-buildroot-g++/qmake.conf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/spec_post.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exclusive_builds.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/default_pre.prf:
../GESys/include.pro:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/resolve_config.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exclusive_builds_post.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/default_post.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/link_pkgconfig.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/warn_on.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/resources.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/moc.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/unix/opengl.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/unix/thread.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/file_copies.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/testcase_targets.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exceptions.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/yacc.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/lex.prf:
/opt/gelin2-17.11-imx6/host/usr/mkspecs/features/silent.prf:
rv_system0.pro:
../GESys/libGESys.prl:
/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Quick.prl:
/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Gui.prl:
/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Qml.prl:
/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Network.prl:
/opt/gelin2-17.11-imx6/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) CONFIG+=debug_and_release -o Makefile rv_system0.pro

qmake_all: FORCE

make_first: release-make_first debug-make_first  FORCE
all: release-all debug-all  FORCE
clean: release-clean debug-clean  FORCE
distclean: release-distclean debug-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) /home/htldev/dev/rv_system/rv_system0/workspace/rv_system0/pkg-config_wrapper.sh

release-mocclean:
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean:
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables:
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables:
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables

check: first

benchmark: first
FORCE:

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: release-distdir debug-distdir FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents assets/main.qml assets/Home.qml assets/Newentry.qml assets/Add.qml assets/keyboard/keyboard_num.xml assets/keyboard/keyboard_ru.xml assets/keyboard/keyboard_us.xml assets/keyboard/Key.qml assets/keyboard/Keyboard.qml assets/keyboard/KeyboardItem.qml assets/Input.qml assets/Detail.qml assets/DateSelection.qml /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/spec_pre.prf /opt/gelin2-17.11-imx6/host/mkspecs/common/unix.conf /opt/gelin2-17.11-imx6/host/mkspecs/common/linux.conf /opt/gelin2-17.11-imx6/host/mkspecs/common/sanitize.conf /opt/gelin2-17.11-imx6/host/mkspecs/common/gcc-base.conf /opt/gelin2-17.11-imx6/host/mkspecs/common/gcc-base-unix.conf /opt/gelin2-17.11-imx6/host/mkspecs/common/g++-base.conf /opt/gelin2-17.11-imx6/host/mkspecs/common/g++-unix.conf /opt/gelin2-17.11-imx6/host/usr/mkspecs/qdevice.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/device_config.prf /opt/gelin2-17.11-imx6/host/mkspecs/devices/common/linux_device_pre.conf /opt/gelin2-17.11-imx6/host/mkspecs/devices/linux-buildroot-g++/arch.conf /opt/gelin2-17.11-imx6/host/mkspecs/devices/common/linux_device_post.conf /opt/gelin2-17.11-imx6/host/usr/mkspecs/qconfig.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bluetooth.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bluetooth_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_bootstrap_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_concurrent.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_concurrent_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_core.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_core_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_dbus.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_dbus_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_enginio.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_enginio_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_gui.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_gui_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimedia.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimedia_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimediawidgets.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_multimediawidgets_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_network.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_network_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_nfc.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_nfc_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_opengl.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_opengl_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_openglextensions.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_openglextensions_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_platformsupport_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_printsupport.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_printsupport_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qml.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qml_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmldevtools_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmltest.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qmltest_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quick.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quick_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickparticles_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickwidgets.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_quickwidgets_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_script.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_script_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_scripttools.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_scripttools_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sensors.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sensors_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_serialport.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_serialport_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sql.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_sql_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_svg.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_svg_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_testlib.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_testlib_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkit.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkit_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkitwidgets.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_webkitwidgets_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_websockets.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_websockets_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_widgets.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_widgets_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_x11extras.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_x11extras_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xml.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xml_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xmlpatterns.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_xmlpatterns_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/modules/qt_lib_zlib_private.pri /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt_functions.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt_config.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/devices/linux-buildroot-g++/qmake.conf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/spec_post.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exclusive_builds.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/default_pre.prf ../GESys/include.pro /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/resolve_config.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exclusive_builds_post.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/default_post.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/link_pkgconfig.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/warn_on.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/qt.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/resources.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/moc.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/unix/opengl.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/unix/thread.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/file_copies.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/testcase_targets.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/exceptions.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/yacc.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/lex.prf /opt/gelin2-17.11-imx6/host/usr/mkspecs/features/silent.prf rv_system0.pro $(DISTDIR)/

release-distdir: FORCE
	$(MAKE) -e -f $(MAKEFILE).Release distdir DISTDIR=$(DISTDIR)/

debug-distdir: FORCE
	$(MAKE) -e -f $(MAKEFILE).Debug distdir DISTDIR=$(DISTDIR)/

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile
