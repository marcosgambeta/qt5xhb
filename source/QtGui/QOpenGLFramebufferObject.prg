/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QOPENGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
#endif

CLASS QOpenGLFramebufferObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD format
   METHOD isValid
   METHOD isBound
   METHOD bind
   METHOD release
   METHOD width
   METHOD height
   METHOD texture
   METHOD size
   METHOD toImage
   METHOD attachment
   METHOD setAttachment
   METHOD handle
   METHOD bindDefault
   METHOD hasOpenGLFramebufferObjects
   METHOD hasOpenGLFramebufferBlit
   METHOD blitFramebuffer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLFramebufferObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLFramebufferObject>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLFramebufferObject>
#endif

#include <QtGui/QImage>

    /*
    QOpenGLFramebufferObject( const QSize & size, GLenum target = GL_TEXTURE_2D )
    */
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW1)
{
  QOpenGLFramebufferObject *obj = new QOpenGLFramebufferObject(*PQSIZE(1), OPGLENUM(2, GL_TEXTURE_2D));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QOpenGLFramebufferObject( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW2)
{
  QOpenGLFramebufferObject *obj = new QOpenGLFramebufferObject(PINT(1), PINT(2), OPGLENUM(3, GL_TEXTURE_2D));
  Qt5xHb::returnNewObject(obj, true);
}

#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)

/*
QOpenGLFramebufferObject( const QSize & size, QOpenGLFramebufferObject::Attachment attachment, GLenum target =
GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW3)
{
  QOpenGLFramebufferObject *obj = new QOpenGLFramebufferObject(
      *PQSIZE(1), (QOpenGLFramebufferObject::Attachment)hb_parni(2), OPGLENUM(3, GL_TEXTURE_2D), OPGLENUM(4, GL_RGBA8));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QOpenGLFramebufferObject( int width, int height, QOpenGLFramebufferObject::Attachment attachment, GLenum target =
GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW4)
{
  QOpenGLFramebufferObject *obj =
      new QOpenGLFramebufferObject(PINT(1), PINT(2), (QOpenGLFramebufferObject::Attachment)hb_parni(3),
                                   OPGLENUM(4, GL_TEXTURE_2D), OPGLENUM(5, GL_RGBA8));
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW5)
{
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW6)
{
}

#else

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW3)
{
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW4)
{
}

/*
QOpenGLFramebufferObject( const QSize & size, QOpenGLFramebufferObject::Attachment attachment, GLenum target =
GL_TEXTURE_2D, GLenum internal_format = GL_RGBA )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW5)
{
  QOpenGLFramebufferObject *obj = new QOpenGLFramebufferObject(
      *PQSIZE(1), (QOpenGLFramebufferObject::Attachment)hb_parni(2), OPGLENUM(3, GL_TEXTURE_2D), OPGLENUM(4, GL_RGBA));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QOpenGLFramebufferObject( int width, int height, QOpenGLFramebufferObject::Attachment attachment, GLenum target =
GL_TEXTURE_2D, GLenum internal_format = GL_RGBA )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW6)
{
  QOpenGLFramebufferObject *obj =
      new QOpenGLFramebufferObject(PINT(1), PINT(2), (QOpenGLFramebufferObject::Attachment)hb_parni(3),
                                   OPGLENUM(4, GL_TEXTURE_2D), OPGLENUM(5, GL_RGBA));
  Qt5xHb::returnNewObject(obj, true);
}

#endif

/*
QOpenGLFramebufferObject( const QSize & size, const QOpenGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW7)
{
  QOpenGLFramebufferObject *obj = new QOpenGLFramebufferObject(*PQSIZE(1), *PQOPENGLFRAMEBUFFEROBJECTFORMAT(2));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QOpenGLFramebufferObject( int width, int height, const QOpenGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW8)
{
  QOpenGLFramebufferObject *obj = new QOpenGLFramebufferObject(PINT(1), PINT(2), *PQOPENGLFRAMEBUFFEROBJECTFORMAT(3));
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEW)
{
  if (ISBETWEEN(1, 2) && ISQSIZE(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW1);
  }
  else if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW2);
  }
#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)
  else if (ISBETWEEN(2, 4) && ISQSIZE(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW3);
  }
  else if (ISBETWEEN(3, 5) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW4);
  }
#else
  else if (ISBETWEEN(2, 4) && ISQSIZE(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW5);
  }
  else if (ISBETWEEN(3, 5) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW6);
  }
#endif
  else if (ISNUMPAR(2) && ISQSIZE(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(2))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW7);
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(3))
  {
    HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEW8);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_DELETE)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QOpenGLFramebufferObjectFormat format() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_FORMAT)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QOpenGLFramebufferObjectFormat *ptr = new QOpenGLFramebufferObjectFormat(obj->format());
      Qt5xHb::createReturnClass(ptr, "QOPENGLFRAMEBUFFEROBJECTFORMAT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_ISVALID)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isBound() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_ISBOUND)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isBound());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool bind()
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_BIND)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->bind());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool release()
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_RELEASE)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->release());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int width() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_WIDTH)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->width());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int height() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_HEIGHT)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->height());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
GLuint texture() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_TEXTURE)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLUINT(obj->texture());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSize size() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_SIZE)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->size());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QImage toImage() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_TOIMAGE)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QImage *ptr = new QImage(obj->toImage());
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QOpenGLFramebufferObject::Attachment attachment() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_ATTACHMENT)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->attachment());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAttachment( QOpenGLFramebufferObject::Attachment attachment )
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_SETATTACHMENT)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAttachment((QOpenGLFramebufferObject::Attachment)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
GLuint handle() const
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_HANDLE)
{
  QOpenGLFramebufferObject *obj = (QOpenGLFramebufferObject *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLUINT(obj->handle());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
static bool bindDefault()
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_BINDDEFAULT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QOpenGLFramebufferObject::bindDefault());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool hasOpenGLFramebufferObjects()
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QOpenGLFramebufferObject::hasOpenGLFramebufferObjects());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool hasOpenGLFramebufferBlit()
*/
HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QOpenGLFramebufferObject::hasOpenGLFramebufferBlit());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER)
{
  if (ISBETWEEN(4, 6) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQRECT(2) && ISQOPENGLFRAMEBUFFEROBJECT(3) && ISQRECT(4) &&
      (HB_ISNUM(5) || HB_ISNIL(5)) && (HB_ISNUM(6) || HB_ISNIL(6)))
  {
    /*
    static void blitFramebuffer( QOpenGLFramebufferObject * target, const QRect & targetRect, QOpenGLFramebufferObject *
    source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
    */
    QOpenGLFramebufferObject::blitFramebuffer(PQOPENGLFRAMEBUFFEROBJECT(1), *PQRECT(2), PQOPENGLFRAMEBUFFEROBJECT(3),
                                              *PQRECT(4), OPGLBITFIELD(5, GL_COLOR_BUFFER_BIT),
                                              OPGLENUM(6, GL_NEAREST));

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(2, 4) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQOPENGLFRAMEBUFFEROBJECT(2) &&
           (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    static void blitFramebuffer( QOpenGLFramebufferObject * target, QOpenGLFramebufferObject * source, GLbitfield
    buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
    */
    QOpenGLFramebufferObject::blitFramebuffer(PQOPENGLFRAMEBUFFEROBJECT(1), PQOPENGLFRAMEBUFFEROBJECT(2),
                                              OPGLBITFIELD(3, GL_COLOR_BUFFER_BIT), OPGLENUM(4, GL_NEAREST));

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEWFROM);
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QOPENGLFRAMEBUFFEROBJECT_NEWFROM);
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QOPENGLFRAMEBUFFEROBJECT_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
