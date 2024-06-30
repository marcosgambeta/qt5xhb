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
REQUEST QOPENGLCONTEXTGROUP
REQUEST QOPENGLFUNCTIONS
REQUEST QSCREEN
REQUEST QSURFACE
REQUEST QSURFACEFORMAT
#endif

CLASS QOpenGLContext INHERIT QObject

   METHOD new
   METHOD delete
   METHOD create
   METHOD defaultFramebufferObject
   METHOD doneCurrent
   METHOD format
   METHOD functions
   METHOD hasExtension
   METHOD isValid
   METHOD makeCurrent
   METHOD screen
   METHOD setFormat
   METHOD setScreen
   METHOD setShareContext
   METHOD shareContext
   METHOD shareGroup
   METHOD surface
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext

   METHOD onAboutToBeDestroyed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLContext>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLContext>
#endif

#include <QtGui/QScreen>

    /*
    QOpenGLContext( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QOPENGLCONTEXT_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QOpenGLContext *obj = new QOpenGLContext(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QOPENGLCONTEXT_DELETE)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool create()
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_CREATE)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->create());
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
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_DEFAULTFRAMEBUFFEROBJECT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLUINT(obj->defaultFramebufferObject());
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
void doneCurrent()
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_DONECURRENT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->doneCurrent();
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
QSurfaceFormat format() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_FORMAT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSurfaceFormat *ptr = new QSurfaceFormat(obj->format());
      Qt5xHb::createReturnClass(ptr, "QSURFACEFORMAT", true);
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
QOpenGLFunctions * functions() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_FUNCTIONS)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QOpenGLFunctions *ptr = obj->functions();
      Qt5xHb::createReturnClass(ptr, "QOPENGLFUNCTIONS", false);
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
bool hasExtension( const QByteArray & extension ) const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_HASEXTENSION)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      RBOOL(obj->hasExtension(*PQBYTEARRAY(1)));
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
HB_FUNC_STATIC(QOPENGLCONTEXT_ISVALID)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

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
bool makeCurrent( QSurface * surface )
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_MAKECURRENT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSURFACE(1))
    {
#endif
      RBOOL(obj->makeCurrent(PQSURFACE(1)));
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
QScreen * screen() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SCREEN)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QScreen *ptr = obj->screen();
      Qt5xHb::createReturnQObjectClass(ptr, "QSCREEN");
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
void setFormat( const QSurfaceFormat & format )
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SETFORMAT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSURFACEFORMAT(1))
    {
#endif
      obj->setFormat(*PQSURFACEFORMAT(1));
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
void setScreen( QScreen * screen )
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SETSCREEN)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCREEN(1))
    {
#endif
      obj->setScreen(PQSCREEN(1));
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
void setShareContext( QOpenGLContext * shareContext )
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SETSHARECONTEXT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOPENGLCONTEXT(1))
    {
#endif
      obj->setShareContext(PQOPENGLCONTEXT(1));
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
QOpenGLContext * shareContext() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SHARECONTEXT)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QOpenGLContext *ptr = obj->shareContext();
      Qt5xHb::createReturnQObjectClass(ptr, "QOPENGLCONTEXT");
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
QOpenGLContextGroup * shareGroup() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SHAREGROUP)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QOpenGLContextGroup *ptr = obj->shareGroup();
      Qt5xHb::createReturnQObjectClass(ptr, "QOPENGLCONTEXTGROUP");
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
QSurface * surface() const
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SURFACE)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSurface *ptr = obj->surface();
      Qt5xHb::createReturnClass(ptr, "QSURFACE", false);
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
void swapBuffers( QSurface * surface )
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_SWAPBUFFERS)
{
  QOpenGLContext *obj = (QOpenGLContext *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSURFACE(1))
    {
#endif
      obj->swapBuffers(PQSURFACE(1));
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
static bool areSharing( QOpenGLContext * first, QOpenGLContext * second )
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_ARESHARING)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQOPENGLCONTEXT(1) && ISQOPENGLCONTEXT(2))
  {
#endif
    RBOOL(QOpenGLContext::areSharing(PQOPENGLCONTEXT(1), PQOPENGLCONTEXT(2)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QOpenGLContext * currentContext()
*/
HB_FUNC_STATIC(QOPENGLCONTEXT_CURRENTCONTEXT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QOpenGLContext *ptr = QOpenGLContext::currentContext();
    Qt5xHb::createReturnQObjectClass(ptr, "QOPENGLCONTEXT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QOpenGLContextSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QOPENGLCONTEXT_ONABOUTTOBEDESTROYED)
{
  QOpenGLContextSlots_connect_signal("aboutToBeDestroyed()", "aboutToBeDestroyed()");
}

#pragma ENDDUMP
