# Microsoft Developer Studio Generated NMAKE File, Based on ApacheCore.dsp
!IF "$(CFG)" == ""
CFG=ApacheCore - Win32 Release
!MESSAGE No configuration specified. Defaulting to ApacheCore - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "ApacheCore - Win32 Release" && "$(CFG)" !=\
 "ApacheCore - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ApacheCore.mak" CFG="ApacheCore - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ApacheCore - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ApacheCore - Win32 Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

OUTDIR=.\CoreR
INTDIR=.\CoreR
# Begin Custom Macros
OutDir=.\CoreR
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ApacheCore.dll"

!ELSE 

ALL : "regex - Win32 Release" "gen_uri_delims - Win32 Release"\
 "gen_test_char - Win32 Release" "ApacheOS - Win32 Release" "ap - Win32 Release"\
 "$(OUTDIR)\ApacheCore.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ap - Win32 ReleaseCLEAN" "ApacheOS - Win32 ReleaseCLEAN"\
 "gen_test_char - Win32 ReleaseCLEAN" "gen_uri_delims - Win32 ReleaseCLEAN"\
 "regex - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\alloc.obj"
	-@erase "$(INTDIR)\buff.obj"
	-@erase "$(INTDIR)\buildmark.obj"
	-@erase "$(INTDIR)\getopt.obj"
	-@erase "$(INTDIR)\http_config.obj"
	-@erase "$(INTDIR)\http_core.obj"
	-@erase "$(INTDIR)\http_log.obj"
	-@erase "$(INTDIR)\http_main.obj"
	-@erase "$(INTDIR)\http_protocol.obj"
	-@erase "$(INTDIR)\http_request.obj"
	-@erase "$(INTDIR)\http_vhost.obj"
	-@erase "$(INTDIR)\mod_access.obj"
	-@erase "$(INTDIR)\mod_actions.obj"
	-@erase "$(INTDIR)\mod_alias.obj"
	-@erase "$(INTDIR)\mod_asis.obj"
	-@erase "$(INTDIR)\mod_auth.obj"
	-@erase "$(INTDIR)\mod_autoindex.obj"
	-@erase "$(INTDIR)\mod_cgi.obj"
	-@erase "$(INTDIR)\mod_dir.obj"
	-@erase "$(INTDIR)\mod_env.obj"
	-@erase "$(INTDIR)\mod_imap.obj"
	-@erase "$(INTDIR)\mod_include.obj"
	-@erase "$(INTDIR)\mod_isapi.obj"
	-@erase "$(INTDIR)\mod_log_config.obj"
	-@erase "$(INTDIR)\mod_mime.obj"
	-@erase "$(INTDIR)\mod_negotiation.obj"
	-@erase "$(INTDIR)\mod_setenvif.obj"
	-@erase "$(INTDIR)\mod_so.obj"
	-@erase "$(INTDIR)\mod_userdir.obj"
	-@erase "$(INTDIR)\modules.obj"
	-@erase "$(INTDIR)\multithread.obj"
	-@erase "$(INTDIR)\readdir.obj"
	-@erase "$(INTDIR)\registry.obj"
	-@erase "$(INTDIR)\rfc1413.obj"
	-@erase "$(INTDIR)\service.obj"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\util_date.obj"
	-@erase "$(INTDIR)\util_md5.obj"
	-@erase "$(INTDIR)\util_script.obj"
	-@erase "$(INTDIR)\util_uri.obj"
	-@erase "$(INTDIR)\util_win32.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\ApacheCore.dll"
	-@erase "$(OUTDIR)\ApacheCore.exp"
	-@erase "$(OUTDIR)\ApacheCore.lib"
	-@erase "$(OUTDIR)\ApacheCore.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I ".\include" /D "NDEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "WIN32_LEAN_AND_MEAN" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\CoreR/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ApacheCore.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=os\win32\ApacheOSR\ApacheOS.lib regex\release\regex.lib\
 ap\Release\ap.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ws2_32.lib /nologo /subsystem:windows /dll\
 /incremental:no /pdb:"$(OUTDIR)\ApacheCore.pdb" /map:"$(INTDIR)\ApacheCore.map"\
 /machine:I386 /def:".\ApacheCore.def" /out:"$(OUTDIR)\ApacheCore.dll"\
 /implib:"$(OUTDIR)\ApacheCore.lib" /base:@"os\win32\BaseAddr.ref",ApacheCore 
DEF_FILE= \
	".\ApacheCore.def"
LINK32_OBJS= \
	"$(INTDIR)\alloc.obj" \
	"$(INTDIR)\buff.obj" \
	"$(INTDIR)\buildmark.obj" \
	"$(INTDIR)\getopt.obj" \
	"$(INTDIR)\http_config.obj" \
	"$(INTDIR)\http_core.obj" \
	"$(INTDIR)\http_log.obj" \
	"$(INTDIR)\http_main.obj" \
	"$(INTDIR)\http_protocol.obj" \
	"$(INTDIR)\http_request.obj" \
	"$(INTDIR)\http_vhost.obj" \
	"$(INTDIR)\mod_access.obj" \
	"$(INTDIR)\mod_actions.obj" \
	"$(INTDIR)\mod_alias.obj" \
	"$(INTDIR)\mod_asis.obj" \
	"$(INTDIR)\mod_auth.obj" \
	"$(INTDIR)\mod_autoindex.obj" \
	"$(INTDIR)\mod_cgi.obj" \
	"$(INTDIR)\mod_dir.obj" \
	"$(INTDIR)\mod_env.obj" \
	"$(INTDIR)\mod_imap.obj" \
	"$(INTDIR)\mod_include.obj" \
	"$(INTDIR)\mod_isapi.obj" \
	"$(INTDIR)\mod_log_config.obj" \
	"$(INTDIR)\mod_mime.obj" \
	"$(INTDIR)\mod_negotiation.obj" \
	"$(INTDIR)\mod_setenvif.obj" \
	"$(INTDIR)\mod_so.obj" \
	"$(INTDIR)\mod_userdir.obj" \
	"$(INTDIR)\modules.obj" \
	"$(INTDIR)\multithread.obj" \
	"$(INTDIR)\readdir.obj" \
	"$(INTDIR)\registry.obj" \
	"$(INTDIR)\rfc1413.obj" \
	"$(INTDIR)\service.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\util_date.obj" \
	"$(INTDIR)\util_md5.obj" \
	"$(INTDIR)\util_script.obj" \
	"$(INTDIR)\util_uri.obj" \
	"$(INTDIR)\util_win32.obj" \
	".\ap\Release\ap.lib" \
	".\os\win32\ApacheOSR\ApacheOS.lib" \
	".\regex\Release\regex.lib"

"$(OUTDIR)\ApacheCore.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

OUTDIR=.\CoreD
INTDIR=.\CoreD
# Begin Custom Macros
OutDir=.\CoreD
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ApacheCore.dll"

!ELSE 

ALL : "regex - Win32 Debug" "gen_uri_delims - Win32 Debug"\
 "gen_test_char - Win32 Debug" "ApacheOS - Win32 Debug" "ap - Win32 Debug"\
 "$(OUTDIR)\ApacheCore.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ap - Win32 DebugCLEAN" "ApacheOS - Win32 DebugCLEAN"\
 "gen_test_char - Win32 DebugCLEAN" "gen_uri_delims - Win32 DebugCLEAN"\
 "regex - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\alloc.obj"
	-@erase "$(INTDIR)\buff.obj"
	-@erase "$(INTDIR)\buildmark.obj"
	-@erase "$(INTDIR)\getopt.obj"
	-@erase "$(INTDIR)\http_config.obj"
	-@erase "$(INTDIR)\http_core.obj"
	-@erase "$(INTDIR)\http_log.obj"
	-@erase "$(INTDIR)\http_main.obj"
	-@erase "$(INTDIR)\http_protocol.obj"
	-@erase "$(INTDIR)\http_request.obj"
	-@erase "$(INTDIR)\http_vhost.obj"
	-@erase "$(INTDIR)\mod_access.obj"
	-@erase "$(INTDIR)\mod_actions.obj"
	-@erase "$(INTDIR)\mod_alias.obj"
	-@erase "$(INTDIR)\mod_asis.obj"
	-@erase "$(INTDIR)\mod_auth.obj"
	-@erase "$(INTDIR)\mod_autoindex.obj"
	-@erase "$(INTDIR)\mod_cgi.obj"
	-@erase "$(INTDIR)\mod_dir.obj"
	-@erase "$(INTDIR)\mod_env.obj"
	-@erase "$(INTDIR)\mod_imap.obj"
	-@erase "$(INTDIR)\mod_include.obj"
	-@erase "$(INTDIR)\mod_isapi.obj"
	-@erase "$(INTDIR)\mod_log_config.obj"
	-@erase "$(INTDIR)\mod_mime.obj"
	-@erase "$(INTDIR)\mod_negotiation.obj"
	-@erase "$(INTDIR)\mod_setenvif.obj"
	-@erase "$(INTDIR)\mod_so.obj"
	-@erase "$(INTDIR)\mod_userdir.obj"
	-@erase "$(INTDIR)\modules.obj"
	-@erase "$(INTDIR)\multithread.obj"
	-@erase "$(INTDIR)\readdir.obj"
	-@erase "$(INTDIR)\registry.obj"
	-@erase "$(INTDIR)\rfc1413.obj"
	-@erase "$(INTDIR)\service.obj"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\util_date.obj"
	-@erase "$(INTDIR)\util_md5.obj"
	-@erase "$(INTDIR)\util_script.obj"
	-@erase "$(INTDIR)\util_uri.obj"
	-@erase "$(INTDIR)\util_win32.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\ApacheCore.dll"
	-@erase "$(OUTDIR)\ApacheCore.exp"
	-@erase "$(OUTDIR)\ApacheCore.ilk"
	-@erase "$(OUTDIR)\ApacheCore.lib"
	-@erase "$(OUTDIR)\ApacheCore.map"
	-@erase "$(OUTDIR)\ApacheCore.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I ".\include" /D "_DEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "WIN32_LEAN_AND_MEAN" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c\
 
CPP_OBJS=.\CoreD/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ApacheCore.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=os\win32\ApacheOSD\ApacheOS.lib regex\debug\regex.lib\
 ap\Debug\ap.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ws2_32.lib /nologo /subsystem:windows /dll\
 /incremental:yes /pdb:"$(OUTDIR)\ApacheCore.pdb"\
 /map:"$(INTDIR)\ApacheCore.map" /debug /machine:I386 /def:".\ApacheCore.def"\
 /out:"$(OUTDIR)\ApacheCore.dll" /implib:"$(OUTDIR)\ApacheCore.lib"\
 /base:@"os\win32\BaseAddr.ref",ApacheCore 
DEF_FILE= \
	".\ApacheCore.def"
LINK32_OBJS= \
	"$(INTDIR)\alloc.obj" \
	"$(INTDIR)\buff.obj" \
	"$(INTDIR)\buildmark.obj" \
	"$(INTDIR)\getopt.obj" \
	"$(INTDIR)\http_config.obj" \
	"$(INTDIR)\http_core.obj" \
	"$(INTDIR)\http_log.obj" \
	"$(INTDIR)\http_main.obj" \
	"$(INTDIR)\http_protocol.obj" \
	"$(INTDIR)\http_request.obj" \
	"$(INTDIR)\http_vhost.obj" \
	"$(INTDIR)\mod_access.obj" \
	"$(INTDIR)\mod_actions.obj" \
	"$(INTDIR)\mod_alias.obj" \
	"$(INTDIR)\mod_asis.obj" \
	"$(INTDIR)\mod_auth.obj" \
	"$(INTDIR)\mod_autoindex.obj" \
	"$(INTDIR)\mod_cgi.obj" \
	"$(INTDIR)\mod_dir.obj" \
	"$(INTDIR)\mod_env.obj" \
	"$(INTDIR)\mod_imap.obj" \
	"$(INTDIR)\mod_include.obj" \
	"$(INTDIR)\mod_isapi.obj" \
	"$(INTDIR)\mod_log_config.obj" \
	"$(INTDIR)\mod_mime.obj" \
	"$(INTDIR)\mod_negotiation.obj" \
	"$(INTDIR)\mod_setenvif.obj" \
	"$(INTDIR)\mod_so.obj" \
	"$(INTDIR)\mod_userdir.obj" \
	"$(INTDIR)\modules.obj" \
	"$(INTDIR)\multithread.obj" \
	"$(INTDIR)\readdir.obj" \
	"$(INTDIR)\registry.obj" \
	"$(INTDIR)\rfc1413.obj" \
	"$(INTDIR)\service.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\util_date.obj" \
	"$(INTDIR)\util_md5.obj" \
	"$(INTDIR)\util_script.obj" \
	"$(INTDIR)\util_uri.obj" \
	"$(INTDIR)\util_win32.obj" \
	".\ap\Debug\ap.lib" \
	".\os\win32\ApacheOSD\ApacheOS.lib" \
	".\regex\Debug\regex.lib"

"$(OUTDIR)\ApacheCore.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "ApacheCore - Win32 Release" || "$(CFG)" ==\
 "ApacheCore - Win32 Debug"
SOURCE=.\main\alloc.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_ALLOC=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\multithread.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\alloc.obj" : $(SOURCE) $(DEP_CPP_ALLOC) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_ALLOC=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\multithread.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\alloc.obj" : $(SOURCE) $(DEP_CPP_ALLOC) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\buff.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_BUFF_=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\buff.obj" : $(SOURCE) $(DEP_CPP_BUFF_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_BUFF_=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\buff.obj" : $(SOURCE) $(DEP_CPP_BUFF_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\buildmark.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_BUILD=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\buildmark.obj" : $(SOURCE) $(DEP_CPP_BUILD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_BUILD=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\buildmark.obj" : $(SOURCE) $(DEP_CPP_BUILD) "$(INTDIR)"


!ENDIF 

SOURCE=.\os\win32\getopt.c

"$(INTDIR)\getopt.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\main\http_config.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_HTTP_=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\explain.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_config.obj" : $(SOURCE) $(DEP_CPP_HTTP_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_HTTP_=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\explain.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_config.obj" : $(SOURCE) $(DEP_CPP_HTTP_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\http_core.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_HTTP_C=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_md5.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\fnmatch.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\rfc1413.h"\
	".\include\scoreboard.h"\
	".\include\util_md5.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_core.obj" : $(SOURCE) $(DEP_CPP_HTTP_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_HTTP_C=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_md5.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\fnmatch.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\rfc1413.h"\
	".\include\scoreboard.h"\
	".\include\util_md5.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_core.obj" : $(SOURCE) $(DEP_CPP_HTTP_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\http_log.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_HTTP_L=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_log.obj" : $(SOURCE) $(DEP_CPP_HTTP_L) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_HTTP_L=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_log.obj" : $(SOURCE) $(DEP_CPP_HTTP_L) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\http_main.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_HTTP_M=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\explain.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\multithread.h"\
	".\include\scoreboard.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\getopt.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	".\os\win32\registry.h"\
	".\os\win32\service.h"\
	

"$(INTDIR)\http_main.obj" : $(SOURCE) $(DEP_CPP_HTTP_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_HTTP_M=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\explain.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\multithread.h"\
	".\include\scoreboard.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\getopt.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	".\os\win32\registry.h"\
	".\os\win32\service.h"\
	

"$(INTDIR)\http_main.obj" : $(SOURCE) $(DEP_CPP_HTTP_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\http_protocol.c
DEP_CPP_HTTP_P=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\util_date.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_protocol.obj" : $(SOURCE) $(DEP_CPP_HTTP_P) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\main\http_request.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_HTTP_R=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\fnmatch.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\scoreboard.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_request.obj" : $(SOURCE) $(DEP_CPP_HTTP_R) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_HTTP_R=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\fnmatch.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\scoreboard.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_request.obj" : $(SOURCE) $(DEP_CPP_HTTP_R) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\http_vhost.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_HTTP_V=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_vhost.obj" : $(SOURCE) $(DEP_CPP_HTTP_V) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_HTTP_V=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\http_vhost.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\http_vhost.obj" : $(SOURCE) $(DEP_CPP_HTTP_V) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_access.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_A=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_access.obj" : $(SOURCE) $(DEP_CPP_MOD_A) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_A=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_access.obj" : $(SOURCE) $(DEP_CPP_MOD_A) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_actions.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_AC=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_actions.obj" : $(SOURCE) $(DEP_CPP_MOD_AC) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_AC=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_actions.obj" : $(SOURCE) $(DEP_CPP_MOD_AC) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_alias.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_AL=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_alias.obj" : $(SOURCE) $(DEP_CPP_MOD_AL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_AL=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_alias.obj" : $(SOURCE) $(DEP_CPP_MOD_AL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_asis.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_AS=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_asis.obj" : $(SOURCE) $(DEP_CPP_MOD_AS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_AS=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_asis.obj" : $(SOURCE) $(DEP_CPP_MOD_AS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_auth.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_AU=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_auth.obj" : $(SOURCE) $(DEP_CPP_MOD_AU) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_AU=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_auth.obj" : $(SOURCE) $(DEP_CPP_MOD_AU) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_autoindex.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_AUT=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\fnmatch.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_autoindex.obj" : $(SOURCE) $(DEP_CPP_MOD_AUT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_AUT=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\fnmatch.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_autoindex.obj" : $(SOURCE) $(DEP_CPP_MOD_AUT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_cgi.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_C=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_cgi.obj" : $(SOURCE) $(DEP_CPP_MOD_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_C=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_cgi.obj" : $(SOURCE) $(DEP_CPP_MOD_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_dir.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_D=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_dir.obj" : $(SOURCE) $(DEP_CPP_MOD_D) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_D=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_dir.obj" : $(SOURCE) $(DEP_CPP_MOD_D) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_env.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_E=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_env.obj" : $(SOURCE) $(DEP_CPP_MOD_E) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_E=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_env.obj" : $(SOURCE) $(DEP_CPP_MOD_E) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_imap.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_I=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_imap.obj" : $(SOURCE) $(DEP_CPP_MOD_I) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_I=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_imap.obj" : $(SOURCE) $(DEP_CPP_MOD_I) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_include.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_IN=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_include.obj" : $(SOURCE) $(DEP_CPP_MOD_IN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_IN=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_include.obj" : $(SOURCE) $(DEP_CPP_MOD_IN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\os\win32\mod_isapi.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_IS=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_isapi.obj" : $(SOURCE) $(DEP_CPP_MOD_IS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_IS=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_isapi.obj" : $(SOURCE) $(DEP_CPP_MOD_IS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_log_config.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_L=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_log_config.obj" : $(SOURCE) $(DEP_CPP_MOD_L) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_L=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_log_config.obj" : $(SOURCE) $(DEP_CPP_MOD_L) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_mime.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_M=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_mime.obj" : $(SOURCE) $(DEP_CPP_MOD_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_M=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_mime.obj" : $(SOURCE) $(DEP_CPP_MOD_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_negotiation.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_N=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_negotiation.obj" : $(SOURCE) $(DEP_CPP_MOD_N) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_N=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_negotiation.obj" : $(SOURCE) $(DEP_CPP_MOD_N) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_setenvif.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_S=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_setenvif.obj" : $(SOURCE) $(DEP_CPP_MOD_S) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_S=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_setenvif.obj" : $(SOURCE) $(DEP_CPP_MOD_S) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_so.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_SO=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_so.obj" : $(SOURCE) $(DEP_CPP_MOD_SO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_SO=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_so.obj" : $(SOURCE) $(DEP_CPP_MOD_SO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\modules\standard\mod_userdir.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MOD_U=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_userdir.obj" : $(SOURCE) $(DEP_CPP_MOD_U) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MOD_U=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\mod_userdir.obj" : $(SOURCE) $(DEP_CPP_MOD_U) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\os\win32\modules.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MODUL=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\modules.obj" : $(SOURCE) $(DEP_CPP_MODUL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MODUL=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_config.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\modules.obj" : $(SOURCE) $(DEP_CPP_MODUL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\os\win32\multithread.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_MULTI=\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\hsregex.h"\
	".\include\multithread.h"\
	".\os\win32\os.h"\
	

"$(INTDIR)\multithread.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_MULTI=\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\hsregex.h"\
	".\include\multithread.h"\
	".\os\win32\os.h"\
	

"$(INTDIR)\multithread.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\os\win32\readdir.c
DEP_CPP_READD=\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\readdir.obj" : $(SOURCE) $(DEP_CPP_READD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os\win32\registry.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_REGIS=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\registry.obj" : $(SOURCE) $(DEP_CPP_REGIS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_REGIS=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\registry.obj" : $(SOURCE) $(DEP_CPP_REGIS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\rfc1413.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_RFC14=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\rfc1413.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\rfc1413.obj" : $(SOURCE) $(DEP_CPP_RFC14) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_RFC14=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\rfc1413.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\rfc1413.obj" : $(SOURCE) $(DEP_CPP_RFC14) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\os\win32\service.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_SERVI=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\multithread.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	".\os\win32\registry.h"\
	".\os\win32\service.h"\
	

"$(INTDIR)\service.obj" : $(SOURCE) $(DEP_CPP_SERVI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_SERVI=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\httpd.h"\
	".\include\multithread.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	".\os\win32\registry.h"\
	".\os\win32\service.h"\
	

"$(INTDIR)\service.obj" : $(SOURCE) $(DEP_CPP_SERVI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\util.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_UTIL_=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\main\test_char.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_UTIL_=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\main\test_char.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\util_date.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_UTIL_D=\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\hsregex.h"\
	".\include\util_date.h"\
	".\os\win32\os.h"\
	

"$(INTDIR)\util_date.obj" : $(SOURCE) $(DEP_CPP_UTIL_D) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_UTIL_D=\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\hsregex.h"\
	".\include\util_date.h"\
	".\os\win32\os.h"\
	

"$(INTDIR)\util_date.obj" : $(SOURCE) $(DEP_CPP_UTIL_D) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\util_md5.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_UTIL_M=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_md5.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\httpd.h"\
	".\include\util_md5.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_md5.obj" : $(SOURCE) $(DEP_CPP_UTIL_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_UTIL_M=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_md5.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\httpd.h"\
	".\include\util_md5.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_md5.obj" : $(SOURCE) $(DEP_CPP_UTIL_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\util_script.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_UTIL_S=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_date.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_script.obj" : $(SOURCE) $(DEP_CPP_UTIL_S) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_UTIL_S=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_config.h"\
	".\include\http_core.h"\
	".\include\http_log.h"\
	".\include\http_main.h"\
	".\include\http_protocol.h"\
	".\include\http_request.h"\
	".\include\httpd.h"\
	".\include\util_date.h"\
	".\include\util_script.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_script.obj" : $(SOURCE) $(DEP_CPP_UTIL_S) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\main\util_uri.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_UTIL_U=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\main\uri_delims.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_uri.obj" : $(SOURCE) $(DEP_CPP_UTIL_U) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_UTIL_U=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_conf_globals.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\main\uri_delims.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_uri.obj" : $(SOURCE) $(DEP_CPP_UTIL_U) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\os\win32\util_win32.c

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

DEP_CPP_UTIL_W=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_win32.obj" : $(SOURCE) $(DEP_CPP_UTIL_W) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

DEP_CPP_UTIL_W=\
	".\include\ap_alloc.h"\
	".\include\ap.h"\
	".\include\ap_config.h"\
	".\include\ap_ctype.h"\
	".\include\ap_mmn.h"\
	".\include\buff.h"\
	".\include\hsregex.h"\
	".\include\http_log.h"\
	".\include\httpd.h"\
	".\include\util_uri.h"\
	".\os\win32\os.h"\
	".\os\win32\readdir.h"\
	

"$(INTDIR)\util_win32.obj" : $(SOURCE) $(DEP_CPP_UTIL_W) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

"ap - Win32 Release" : 
   cd ".\ap"
   $(MAKE) /$(MAKEFLAGS) /F ".\ap.mak" CFG="ap - Win32 Release" 
   cd ".."

"ap - Win32 ReleaseCLEAN" : 
   cd ".\ap"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\ap.mak" CFG="ap - Win32 Release" RECURSE=1\
 
   cd ".."

!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

"ap - Win32 Debug" : 
   cd ".\ap"
   $(MAKE) /$(MAKEFLAGS) /F ".\ap.mak" CFG="ap - Win32 Debug" 
   cd ".."

"ap - Win32 DebugCLEAN" : 
   cd ".\ap"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\ap.mak" CFG="ap - Win32 Debug" RECURSE=1 
   cd ".."

!ENDIF 

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

"ApacheOS - Win32 Release" : 
   cd ".\os\win32"
   $(MAKE) /$(MAKEFLAGS) /F ".\ApacheOS.mak" CFG="ApacheOS - Win32 Release" 
   cd "..\.."

"ApacheOS - Win32 ReleaseCLEAN" : 
   cd ".\os\win32"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\ApacheOS.mak"\
 CFG="ApacheOS - Win32 Release" RECURSE=1 
   cd "..\.."

!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

"ApacheOS - Win32 Debug" : 
   cd ".\os\win32"
   $(MAKE) /$(MAKEFLAGS) /F ".\ApacheOS.mak" CFG="ApacheOS - Win32 Debug" 
   cd "..\.."

"ApacheOS - Win32 DebugCLEAN" : 
   cd ".\os\win32"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\ApacheOS.mak" CFG="ApacheOS - Win32 Debug"\
 RECURSE=1 
   cd "..\.."

!ENDIF 

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

"gen_test_char - Win32 Release" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\gen_test_char.mak"\
 CFG="gen_test_char - Win32 Release" 
   cd ".."

"gen_test_char - Win32 ReleaseCLEAN" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\gen_test_char.mak"\
 CFG="gen_test_char - Win32 Release" RECURSE=1 
   cd ".."

!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

"gen_test_char - Win32 Debug" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\gen_test_char.mak"\
 CFG="gen_test_char - Win32 Debug" 
   cd ".."

"gen_test_char - Win32 DebugCLEAN" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\gen_test_char.mak"\
 CFG="gen_test_char - Win32 Debug" RECURSE=1 
   cd ".."

!ENDIF 

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

"gen_uri_delims - Win32 Release" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\gen_uri_delims.mak"\
 CFG="gen_uri_delims - Win32 Release" 
   cd ".."

"gen_uri_delims - Win32 ReleaseCLEAN" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\gen_uri_delims.mak"\
 CFG="gen_uri_delims - Win32 Release" RECURSE=1 
   cd ".."

!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

"gen_uri_delims - Win32 Debug" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\gen_uri_delims.mak"\
 CFG="gen_uri_delims - Win32 Debug" 
   cd ".."

"gen_uri_delims - Win32 DebugCLEAN" : 
   cd ".\main"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\gen_uri_delims.mak"\
 CFG="gen_uri_delims - Win32 Debug" RECURSE=1 
   cd ".."

!ENDIF 

!IF  "$(CFG)" == "ApacheCore - Win32 Release"

"regex - Win32 Release" : 
   cd ".\regex"
   $(MAKE) /$(MAKEFLAGS) /F ".\regex.mak" CFG="regex - Win32 Release" 
   cd ".."

"regex - Win32 ReleaseCLEAN" : 
   cd ".\regex"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\regex.mak" CFG="regex - Win32 Release"\
 RECURSE=1 
   cd ".."

!ELSEIF  "$(CFG)" == "ApacheCore - Win32 Debug"

"regex - Win32 Debug" : 
   cd ".\regex"
   $(MAKE) /$(MAKEFLAGS) /F ".\regex.mak" CFG="regex - Win32 Debug" 
   cd ".."

"regex - Win32 DebugCLEAN" : 
   cd ".\regex"
   $(MAKE) /$(MAKEFLAGS) CLEAN /F ".\regex.mak" CFG="regex - Win32 Debug"\
 RECURSE=1 
   cd ".."

!ENDIF 


!ENDIF 

