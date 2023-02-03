/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QOPENGLCONTEXT
REQUEST QOPENGLFRAMEBUFFEROBJECT
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QQUICKITEM
REQUEST QSGTEXTURE
REQUEST QSIZE
#endif

CLASS QQuickWindow INHERIT QWindow

   METHOD new
   METHOD delete
   METHOD activeFocusItem
   METHOD clearBeforeRendering
   METHOD color
   METHOD contentItem
   METHOD createTextureFromId
   METHOD createTextureFromImage
   METHOD grabWindow
   METHOD incubationController
   METHOD isPersistentOpenGLContext
   METHOD isPersistentSceneGraph
   METHOD mouseGrabberItem
   METHOD openglContext
   METHOD renderTarget
   METHOD renderTargetId
   METHOD renderTargetSize
   METHOD sendEvent
   METHOD setClearBeforeRendering
   METHOD setColor
   METHOD setPersistentOpenGLContext
   METHOD setPersistentSceneGraph
   METHOD setRenderTarget
   METHOD accessibleRoot
   METHOD releaseResources
   METHOD update

   METHOD onAfterRendering
   METHOD onBeforeRendering
   METHOD onBeforeSynchronizing
   METHOD onColorChanged
   METHOD onFrameSwapped
   METHOD onSceneGraphInitialized
   METHOD onSceneGraphInvalidated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQuickWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQuick/QQuickWindow>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtQuick/QQuickWindow>
#endif

#include <QtQuick/QQuickItem>
#include <QtQuick/QSGTexture>
#include <QtGui/QOpenGLContext>

/*
QQuickWindow( QWindow * parent = 0 )
*/
HB_FUNC_STATIC( QQUICKWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||HB_ISNIL(1)) )
  {
    QQuickWindow * obj = new QQuickWindow( OPQWINDOW(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QQUICKWINDOW_DELETE )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QQuickItem * activeFocusItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ACTIVEFOCUSITEM )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuickItem * ptr = obj->activeFocusItem();
      Qt5xHb::createReturnQObjectClass(ptr, "QQUICKITEM");
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
bool clearBeforeRendering() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CLEARBEFORERENDERING )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->clearBeforeRendering() );
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
QColor color() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_COLOR )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
QQuickItem * contentItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CONTENTITEM )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuickItem * ptr = obj->contentItem();
      Qt5xHb::createReturnQObjectClass(ptr, "QQUICKITEM");
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
QSGTexture * createTextureFromId( uint id, const QSize & size, QQuickWindow::CreateTextureOptions options = QQuickWindow::CreateTextureOption( 0 ) ) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMID )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && ISQSIZE(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      QSGTexture * ptr = obj->createTextureFromId( PUINT(1), *PQSIZE(2), HB_ISNIL(3)? (QQuickWindow::CreateTextureOptions) QQuickWindow::CreateTextureOption( 0 ) : (QQuickWindow::CreateTextureOptions) hb_parni(3) );
      Qt5xHb::createReturnQObjectClass(ptr, "QSGTEXTURE");
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
QSGTexture * createTextureFromImage( const QImage & image ) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMIMAGE )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
#endif
      QSGTexture * ptr = obj->createTextureFromImage( *PQIMAGE(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QSGTEXTURE");
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
QImage grabWindow()
*/
HB_FUNC_STATIC( QQUICKWINDOW_GRABWINDOW )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QImage * ptr = new QImage( obj->grabWindow() );
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
QQmlIncubationController * incubationController() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_INCUBATIONCONTROLLER )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlIncubationController * ptr = obj->incubationController();
      Qt5xHb::createReturnClass(ptr, "QQMLINCUBATIONCONTROLLER", false);
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
bool isPersistentOpenGLContext() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ISPERSISTENTOPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isPersistentOpenGLContext() );
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
bool isPersistentSceneGraph() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ISPERSISTENTSCENEGRAPH )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isPersistentSceneGraph() );
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
QQuickItem * mouseGrabberItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_MOUSEGRABBERITEM )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuickItem * ptr = obj->mouseGrabberItem();
      Qt5xHb::createReturnQObjectClass(ptr, "QQUICKITEM");
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
QOpenGLContext * openglContext() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_OPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLContext * ptr = obj->openglContext();
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
QOpenGLFramebufferObject * renderTarget() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGET )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLFramebufferObject * ptr = obj->renderTarget();
      Qt5xHb::createReturnClass(ptr, "QOPENGLFRAMEBUFFEROBJECT", false);
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
uint renderTargetId() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGETID )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->renderTargetId() );
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
QSize renderTargetSize() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGETSIZE )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->renderTargetSize() );
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
bool sendEvent( QQuickItem * item, QEvent * e )
*/
HB_FUNC_STATIC( QQUICKWINDOW_SENDEVENT )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQQUICKITEM(1) && ISQEVENT(2) )
    {
#endif
      RBOOL( obj->sendEvent( PQQUICKITEM(1), PQEVENT(2) ) );
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
void setClearBeforeRendering( bool enabled )
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETCLEARBEFORERENDERING )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setClearBeforeRendering( PBOOL(1) );
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
void setColor( const QColor & color )
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETCOLOR )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
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
void setPersistentOpenGLContext( bool persistent )
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETPERSISTENTOPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setPersistentOpenGLContext( PBOOL(1) );
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
void setPersistentSceneGraph( bool persistent )
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETPERSISTENTSCENEGRAPH )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setPersistentSceneGraph( PBOOL(1) );
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

HB_FUNC_STATIC( QQUICKWINDOW_SETRENDERTARGET )
{
  if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECT(1) )
  {
    /*
    void setRenderTarget( QOpenGLFramebufferObject * fbo )
    */
    QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setRenderTarget( PQOPENGLFRAMEBUFFEROBJECT(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSIZE(2) )
  {
    /*
    void setRenderTarget( uint fboId, const QSize & size )
    */
    QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setRenderTarget( PUINT(1), *PQSIZE(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual QAccessibleInterface * accessibleRoot() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ACCESSIBLEROOT )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAccessibleInterface * ptr = obj->accessibleRoot();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEINTERFACE", false);
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
void releaseResources()
*/
HB_FUNC_STATIC( QQUICKWINDOW_RELEASERESOURCES )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->releaseResources();
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
void update()
*/
HB_FUNC_STATIC( QQUICKWINDOW_UPDATE )
{
  QQuickWindow * obj = (QQuickWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->update();
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

void QQuickWindowSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QQUICKWINDOW_ONAFTERRENDERING )
{
  QQuickWindowSlots_connect_signal("afterRendering()", "afterRendering()");
}

HB_FUNC_STATIC( QQUICKWINDOW_ONBEFORERENDERING )
{
  QQuickWindowSlots_connect_signal("beforeRendering()", "beforeRendering()");
}

HB_FUNC_STATIC( QQUICKWINDOW_ONBEFORESYNCHRONIZING )
{
  QQuickWindowSlots_connect_signal("beforeSynchronizing()", "beforeSynchronizing()");
}

HB_FUNC_STATIC( QQUICKWINDOW_ONCOLORCHANGED )
{
  QQuickWindowSlots_connect_signal("colorChanged(QColor)", "colorChanged(QColor)");
}

HB_FUNC_STATIC( QQUICKWINDOW_ONFRAMESWAPPED )
{
  QQuickWindowSlots_connect_signal("frameSwapped()", "frameSwapped()");
}

HB_FUNC_STATIC( QQUICKWINDOW_ONSCENEGRAPHINITIALIZED )
{
  QQuickWindowSlots_connect_signal("sceneGraphInitialized()", "sceneGraphInitialized()");
}

HB_FUNC_STATIC( QQUICKWINDOW_ONSCENEGRAPHINVALIDATED )
{
  QQuickWindowSlots_connect_signal("sceneGraphInvalidated()", "sceneGraphInvalidated()");
}

#pragma ENDDUMP
