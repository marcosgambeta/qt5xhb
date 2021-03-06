/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QGLFunctions

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD glActiveTexture
   METHOD glAttachShader
   METHOD glBindAttribLocation
   METHOD glBindBuffer
   METHOD glBindFramebuffer
   METHOD glBindRenderbuffer
   METHOD glBlendColor
   METHOD glBlendEquation
   METHOD glBlendEquationSeparate
   METHOD glBlendFuncSeparate
   METHOD glCheckFramebufferStatus
   METHOD glClearDepthf
   METHOD glCompileShader
   METHOD glCreateProgram
   METHOD glCreateShader
   METHOD glDeleteProgram
   METHOD glDeleteShader
   METHOD glDepthRangef
   METHOD glDetachShader
   METHOD glDisableVertexAttribArray
   METHOD glEnableVertexAttribArray
   METHOD glFramebufferRenderbuffer
   METHOD glFramebufferTexture2D
   METHOD glGenerateMipmap
   METHOD glGetAttribLocation
   METHOD glGetUniformLocation
   METHOD glIsBuffer
   METHOD glIsFramebuffer
   METHOD glIsProgram
   METHOD glIsRenderbuffer
   METHOD glIsShader
   METHOD glLinkProgram
   METHOD glReleaseShaderCompiler
   METHOD glRenderbufferStorage
   METHOD glSampleCoverage
   METHOD glStencilFuncSeparate
   METHOD glStencilMaskSeparate
   METHOD glStencilOpSeparate
   METHOD glUniform1f
   METHOD glUniform1i
   METHOD glUniform2f
   METHOD glUniform2i
   METHOD glUniform3f
   METHOD glUniform3i
   METHOD glUniform4f
   METHOD glUniform4i
   METHOD glUseProgram
   METHOD glValidateProgram
   METHOD glVertexAttrib1f
   METHOD glVertexAttrib2f
   METHOD glVertexAttrib3f
   METHOD glVertexAttrib4f
   METHOD hasOpenGLFeature
   METHOD initializeGLFunctions
   METHOD openGLFeatures

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLFunctions
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtOpenGL/QGLFunctions>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtOpenGL/QGLFunctions>
#endif

/*
QGLFunctions()
*/
void QGLFunctions_new1()
{
  QGLFunctions * obj = new QGLFunctions();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QGLFunctions(const QGLContext * context)
*/
void QGLFunctions_new2()
{
  QGLFunctions * obj = new QGLFunctions( PQGLCONTEXT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QGLFUNCTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFunctions_new1();
  }
  else if( ISNUMPAR(1) && ISQGLCONTEXT(1) )
  {
    QGLFunctions_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFUNCTIONS_DELETE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glActiveTexture(GLenum texture)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLACTIVETEXTURE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glActiveTexture( PGLENUM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glAttachShader(GLuint program, GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLATTACHSHADER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glAttachShader( PGLUINT(1), PGLUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBindAttribLocation(GLuint program, GLuint index, const char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDATTRIBLOCATION )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISCHAR(3) )
    {
#endif
      obj->glBindAttribLocation( PGLUINT(1), PGLUINT(2), PCONSTCHAR(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBindBuffer(GLenum target, GLuint buffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glBindBuffer( PGLENUM(1), PGLUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBindFramebuffer(GLenum target, GLuint framebuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDFRAMEBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glBindFramebuffer( PGLENUM(1), PGLUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBindRenderbuffer(GLenum target, GLuint renderbuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDRENDERBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glBindRenderbuffer( PGLENUM(1), PGLUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDCOLOR )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glBlendColor( PGLCLAMPF(1), PGLCLAMPF(2), PGLCLAMPF(3), PGLCLAMPF(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBlendEquation(GLenum mode)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDEQUATION )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glBlendEquation( PGLENUM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDEQUATIONSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glBlendEquationSeparate( PGLENUM(1), PGLENUM(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glBlendFuncSeparate(GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDFUNCSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glBlendFuncSeparate( PGLENUM(1), PGLENUM(2), PGLENUM(3), PGLENUM(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
GLenum glCheckFramebufferStatus(GLenum target)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCHECKFRAMEBUFFERSTATUS )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLENUM( obj->glCheckFramebufferStatus( PGLENUM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void glClearDepthf(GLclampf depth)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCLEARDEPTHF )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glClearDepthf( PGLCLAMPF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glCompileShader(GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCOMPILESHADER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glCompileShader( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
GLuint glCreateProgram()
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCREATEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->glCreateProgram() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLuint glCreateShader(GLenum type)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCREATESHADER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLUINT( obj->glCreateShader( PGLENUM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void glDeleteBuffers(GLsizei n, const GLuint * buffers)
*/

/*
void glDeleteFramebuffers(GLsizei n, const GLuint * framebuffers)
*/

/*
void glDeleteProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glDeleteProgram( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glDeleteRenderbuffers(GLsizei n, const GLuint * renderbuffers)
*/

/*
void glDeleteShader(GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETESHADER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glDeleteShader( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glDepthRangef(GLclampf zNear, GLclampf zFar)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDEPTHRANGEF )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glDepthRangef( PGLCLAMPF(1), PGLCLAMPF(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glDetachShader(GLuint program, GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDETACHSHADER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glDetachShader( PGLUINT(1), PGLUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glDisableVertexAttribArray(GLuint index)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDISABLEVERTEXATTRIBARRAY )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glDisableVertexAttribArray( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glEnableVertexAttribArray(GLuint index)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLENABLEVERTEXATTRIBARRAY )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glEnableVertexAttribArray( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLFRAMEBUFFERRENDERBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glFramebufferRenderbuffer( PGLENUM(1), PGLENUM(2), PGLENUM(3), PGLUINT(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLFRAMEBUFFERTEXTURE2D )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
    {
#endif
      obj->glFramebufferTexture2D( PGLENUM(1), PGLENUM(2), PGLENUM(3), PGLUINT(4), PGLINT(5) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glGenBuffers(GLsizei n, GLuint * buffers)
*/

/*
void glGenFramebuffers(GLsizei n, GLuint * framebuffers)
*/

/*
void glGenRenderbuffers(GLsizei n, GLuint * renderbuffers)
*/

/*
void glGenerateMipmap(GLenum target)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGENERATEMIPMAP )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glGenerateMipmap( PGLENUM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufsize, GLsizei * length, GLint * size, GLenum * type, char * name)
*/

/*
void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufsize, GLsizei * length, GLint * size, GLenum * type, char * name)
*/

/*
void glGetAttachedShaders(GLuint program, GLsizei maxcount, GLsizei * count, GLuint * shaders)
*/

/*
int glGetAttribLocation(GLuint program, const char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETATTRIBLOCATION )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RINT( obj->glGetAttribLocation( PGLUINT(1), PCONSTCHAR(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void glGetBufferParameteriv(GLenum target, GLenum pname, GLint * params)
*/

/*
void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint * params)
*/

/*
void glGetProgramInfoLog(GLuint program, GLsizei bufsize, GLsizei * length, char * infolog)
*/

/*
void glGetProgramiv(GLuint program, GLenum pname, GLint * params)
*/

/*
void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint * params)
*/

/*
void glGetShaderInfoLog(GLuint shader, GLsizei bufsize, GLsizei * length, char * infolog)
*/

/*
void glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype, GLint * range, GLint * precision)
*/

/*
void glGetShaderSource(GLuint shader, GLsizei bufsize, GLsizei * length, char * source)
*/

/*
void glGetShaderiv(GLuint shader, GLenum pname, GLint * params)
*/

/*
int glGetUniformLocation(GLuint program, const char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETUNIFORMLOCATION )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RINT( obj->glGetUniformLocation( PGLUINT(1), PCONSTCHAR(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void glGetUniformfv(GLuint program, GLint location, GLfloat * params)
*/

/*
void glGetUniformiv(GLuint program, GLint location, GLint * params)
*/

/*
void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat * params)
*/

/*
void glGetVertexAttribiv(GLuint index, GLenum pname, GLint * params)
*/

/*
GLboolean glIsBuffer(GLuint buffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLBOOLEAN( obj->glIsBuffer( PGLUINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLboolean glIsFramebuffer(GLuint framebuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISFRAMEBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLBOOLEAN( obj->glIsFramebuffer( PGLUINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLboolean glIsProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLBOOLEAN( obj->glIsProgram( PGLUINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLboolean glIsRenderbuffer(GLuint renderbuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISRENDERBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLBOOLEAN( obj->glIsRenderbuffer( PGLUINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLboolean glIsShader(GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISSHADER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RGLBOOLEAN( obj->glIsShader( PGLUINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void glLinkProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLLINKPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glLinkProgram( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glReleaseShaderCompiler()
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLRELEASESHADERCOMPILER )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->glReleaseShaderCompiler();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLRENDERBUFFERSTORAGE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glRenderbufferStorage( PGLENUM(1), PGLENUM(2), PGLSIZEI(3), PGLSIZEI(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glSampleCoverage(GLclampf value, GLboolean invert)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSAMPLECOVERAGE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2) )
    {
#endif
      obj->glSampleCoverage( PGLCLAMPF(1), PGLBOOLEAN(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSTENCILFUNCSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glStencilFuncSeparate( PGLENUM(1), PGLENUM(2), PGLINT(3), PGLUINT(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glStencilMaskSeparate(GLenum face, GLuint mask)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSTENCILMASKSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glStencilMaskSeparate( PGLENUM(1), PGLUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glStencilOpSeparate(GLenum face, GLenum fail, GLenum zfail, GLenum zpass)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSTENCILOPSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glStencilOpSeparate( PGLENUM(1), PGLENUM(2), PGLENUM(3), PGLENUM(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform1f(GLint location, GLfloat x)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM1F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glUniform1f( PGLINT(1), PGLFLOAT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform1i(GLint location, GLint x)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM1I )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glUniform1i( PGLINT(1), PGLINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform2f(GLint location, GLfloat x, GLfloat y)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM2F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->glUniform2f( PGLINT(1), PGLFLOAT(2), PGLFLOAT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform2i(GLint location, GLint x, GLint y)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM2I )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->glUniform2i( PGLINT(1), PGLINT(2), PGLINT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform3f(GLint location, GLfloat x, GLfloat y, GLfloat z)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM3F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glUniform3f( PGLINT(1), PGLFLOAT(2), PGLFLOAT(3), PGLFLOAT(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform3i(GLint location, GLint x, GLint y, GLint z)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM3I )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glUniform3i( PGLINT(1), PGLINT(2), PGLINT(3), PGLINT(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform4f(GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM4F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
    {
#endif
      obj->glUniform4f( PGLINT(1), PGLFLOAT(2), PGLFLOAT(3), PGLFLOAT(4), PGLFLOAT(5) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUniform4i(GLint location, GLint x, GLint y, GLint z, GLint w)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM4I )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
    {
#endif
      obj->glUniform4i( PGLINT(1), PGLINT(2), PGLINT(3), PGLINT(4), PGLINT(5) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glUseProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUSEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glUseProgram( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glValidateProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVALIDATEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->glValidateProgram( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glVertexAttrib1f(GLuint indx, GLfloat x)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB1F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->glVertexAttrib1f( PGLUINT(1), PGLFLOAT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glVertexAttrib2f(GLuint indx, GLfloat x, GLfloat y)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB2F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->glVertexAttrib2f( PGLUINT(1), PGLFLOAT(2), PGLFLOAT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glVertexAttrib3f(GLuint indx, GLfloat x, GLfloat y, GLfloat z)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB3F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->glVertexAttrib3f( PGLUINT(1), PGLFLOAT(2), PGLFLOAT(3), PGLFLOAT(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void glVertexAttrib4f(GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB4F )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
    {
#endif
      obj->glVertexAttrib4f( PGLUINT(1), PGLFLOAT(2), PGLFLOAT(3), PGLFLOAT(4), PGLFLOAT(5) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasOpenGLFeature(QGLFunctions::OpenGLFeature feature) const
*/
HB_FUNC_STATIC( QGLFUNCTIONS_HASOPENGLFEATURE )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->hasOpenGLFeature( (QGLFunctions::OpenGLFeature) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void initializeGLFunctions(const QGLContext * context = 0)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_INITIALIZEGLFUNCTIONS )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQGLCONTEXT(1)||HB_ISNIL(1)) )
    {
#endif
      obj->initializeGLFunctions( HB_ISNIL(1)? 0 : (QGLContext *) Qt5xHb::itemGetPtr(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGLFunctions::OpenGLFeatures openGLFeatures() const
*/
HB_FUNC_STATIC( QGLFUNCTIONS_OPENGLFEATURES )
{
  QGLFunctions * obj = (QGLFunctions *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->openGLFeatures() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QGLFUNCTIONS_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLFUNCTIONS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLFUNCTIONS_NEWFROM );
}

HB_FUNC_STATIC( QGLFUNCTIONS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLFUNCTIONS_NEWFROM );
}

HB_FUNC_STATIC( QGLFUNCTIONS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLFUNCTIONS_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
