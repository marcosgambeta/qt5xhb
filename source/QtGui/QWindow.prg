/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCURSOR
REQUEST QMARGINS
REQUEST QOBJECT
REQUEST QPOINT
REQUEST QRECT
REQUEST QSCREEN
REQUEST QSIZE
REQUEST QSURFACEFORMAT
#endif

CLASS QWindow INHERIT QObject,QSurface

   METHOD new
   METHOD delete
   METHOD baseSize
   METHOD contentOrientation
   METHOD create
   METHOD cursor
   METHOD destroy
   METHOD focusObject
   METHOD frameGeometry
   METHOD frameMargins
   METHOD geometry
   METHOD height
   METHOD isActive
   METHOD isAncestorOf
   METHOD isExposed
   METHOD isModal
   METHOD isTopLevel
   METHOD isVisible
   METHOD mapFromGlobal
   METHOD mapToGlobal
   METHOD maximumSize
   METHOD minimumSize
   METHOD parent
   METHOD reportContentOrientationChange
   METHOD requestedFormat
   METHOD resize
   METHOD screen
   METHOD setBaseSize
   METHOD setCursor
   METHOD setFormat
   METHOD setGeometry
   METHOD setKeyboardGrabEnabled
   METHOD setMaximumSize
   METHOD setMinimumSize
   METHOD setMouseGrabEnabled
   METHOD setOpacity
   METHOD setParent
   METHOD setScreen
   METHOD setSizeIncrement
   METHOD setSurfaceType
   METHOD setTransientParent
   METHOD sizeIncrement
   METHOD transientParent
   METHOD unsetCursor
   METHOD width
   METHOD windowState
   METHOD x
   METHOD y
   METHOD format
   METHOD size
   METHOD surfaceType
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setHeight
   METHOD setVisible
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal
   METHOD position
   METHOD setPosition
   METHOD requestUpdate

   METHOD onContentOrientationChanged
   METHOD onFocusObjectChanged
   METHOD onHeightChanged
   METHOD onScreenChanged
   METHOD onVisibleChanged
   METHOD onWidthChanged
   METHOD onWindowModalityChanged
   METHOD onXChanged
   METHOD onYChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QWindow>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QWindow>
#endif

#include <QtGui/QScreen>

/*
QWindow( QScreen * targetScreen = 0 )
*/
void QWindow_new1()
{
  QWindow * obj = new QWindow( OPQSCREEN(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QWindow( QWindow * parent )
*/
void QWindow_new2()
{
  QWindow * obj = new QWindow( PQWINDOW(1) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSCREEN(1)||HB_ISNIL(1)) )
  {
    QWindow_new1();
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    QWindow_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWINDOW_DELETE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QSize baseSize() const
*/
HB_FUNC_STATIC( QWINDOW_BASESIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->baseSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
Qt::ScreenOrientation contentOrientation() const
*/
HB_FUNC_STATIC( QWINDOW_CONTENTORIENTATION )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->contentOrientation() );
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
void create()
*/
HB_FUNC_STATIC( QWINDOW_CREATE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->create();
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
QCursor cursor() const
*/
HB_FUNC_STATIC( QWINDOW_CURSOR )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCursor * ptr = new QCursor( obj->cursor() );
      Qt5xHb::createReturnClass( ptr, "QCURSOR", true );
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
void destroy()
*/
HB_FUNC_STATIC( QWINDOW_DESTROY )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->destroy();
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
virtual QObject * focusObject() const
*/
HB_FUNC_STATIC( QWINDOW_FOCUSOBJECT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->focusObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
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
QRect frameGeometry() const
*/
HB_FUNC_STATIC( QWINDOW_FRAMEGEOMETRY )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->frameGeometry() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
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
QMargins frameMargins() const
*/
HB_FUNC_STATIC( QWINDOW_FRAMEMARGINS )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMargins * ptr = new QMargins( obj->frameMargins() );
      Qt5xHb::createReturnClass( ptr, "QMARGINS", true );
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
QRect geometry() const
*/
HB_FUNC_STATIC( QWINDOW_GEOMETRY )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->geometry() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
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
int height() const
*/
HB_FUNC_STATIC( QWINDOW_HEIGHT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->height() );
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
bool isActive() const
*/
HB_FUNC_STATIC( QWINDOW_ISACTIVE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
bool isAncestorOf( const QWindow * child, QWindow::AncestorMode mode = QWindow::IncludeTransients ) const
*/
HB_FUNC_STATIC( QWINDOW_ISANCESTOROF )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQWINDOW(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      RBOOL( obj->isAncestorOf( PQWINDOW(1), HB_ISNIL(2)? (QWindow::AncestorMode) QWindow::IncludeTransients : (QWindow::AncestorMode) hb_parni(2) ) );
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
bool isExposed() const
*/
HB_FUNC_STATIC( QWINDOW_ISEXPOSED )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isExposed() );
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
bool isModal() const
*/
HB_FUNC_STATIC( QWINDOW_ISMODAL )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isModal() );
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
bool isTopLevel() const
*/
HB_FUNC_STATIC( QWINDOW_ISTOPLEVEL )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTopLevel() );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QWINDOW_ISVISIBLE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible() );
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
QPoint mapFromGlobal( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWINDOW_MAPFROMGLOBAL )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QPoint * ptr = new QPoint( obj->mapFromGlobal( *PQPOINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
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
QPoint mapToGlobal( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWINDOW_MAPTOGLOBAL )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QPoint * ptr = new QPoint( obj->mapToGlobal( *PQPOINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
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
QSize maximumSize() const
*/
HB_FUNC_STATIC( QWINDOW_MAXIMUMSIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->maximumSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
QSize minimumSize() const
*/
HB_FUNC_STATIC( QWINDOW_MINIMUMSIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
QWindow * parent() const
*/
HB_FUNC_STATIC( QWINDOW_PARENT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWindow * ptr = obj->parent();
      Qt5xHb::createReturnQObjectClass( ptr, "QWINDOW" );
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
void reportContentOrientationChange( Qt::ScreenOrientation orientation )
*/
HB_FUNC_STATIC( QWINDOW_REPORTCONTENTORIENTATIONCHANGE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->reportContentOrientationChange( (Qt::ScreenOrientation) hb_parni(1) );
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
QSurfaceFormat requestedFormat() const
*/
HB_FUNC_STATIC( QWINDOW_REQUESTEDFORMAT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurfaceFormat * ptr = new QSurfaceFormat( obj->requestedFormat() );
      Qt5xHb::createReturnClass( ptr, "QSURFACEFORMAT", true );
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
void resize( const QSize & newSize )
*/
void QWindow_resize1()
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resize( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize( int w, int h )
*/
void QWindow_resize2()
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resize( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWINDOW_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWindow_resize1();
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    QWindow_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScreen * screen() const
*/
HB_FUNC_STATIC( QWINDOW_SCREEN )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScreen * ptr = obj->screen();
      Qt5xHb::createReturnQObjectClass( ptr, "QSCREEN" );
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
void setBaseSize( const QSize & size )
*/
HB_FUNC_STATIC( QWINDOW_SETBASESIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setBaseSize( *PQSIZE(1) );
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
void setCursor( const QCursor & )
*/
HB_FUNC_STATIC( QWINDOW_SETCURSOR )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCURSOR(1) )
    {
#endif
      obj->setCursor( *PQCURSOR(1) );
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
void setFormat( const QSurfaceFormat & format )
*/
HB_FUNC_STATIC( QWINDOW_SETFORMAT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
    {
#endif
      obj->setFormat( *PQSURFACEFORMAT(1) );
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
void setGeometry( int posx, int posy, int w, int h )
*/
void QWindow_setGeometry1()
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGeometry( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry( const QRect & rect )
*/
void QWindow_setGeometry2()
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGeometry( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWINDOW_SETGEOMETRY )
{
  if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    QWindow_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWindow_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setKeyboardGrabEnabled( bool grab )
*/
HB_FUNC_STATIC( QWINDOW_SETKEYBOARDGRABENABLED )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      RBOOL( obj->setKeyboardGrabEnabled( PBOOL(1) ) );
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
void setMaximumSize( const QSize & size )
*/
HB_FUNC_STATIC( QWINDOW_SETMAXIMUMSIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setMaximumSize( *PQSIZE(1) );
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
void setMinimumSize( const QSize & size )
*/
HB_FUNC_STATIC( QWINDOW_SETMINIMUMSIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setMinimumSize( *PQSIZE(1) );
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
bool setMouseGrabEnabled( bool grab )
*/
HB_FUNC_STATIC( QWINDOW_SETMOUSEGRABENABLED )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      RBOOL( obj->setMouseGrabEnabled( PBOOL(1) ) );
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
void setOpacity( qreal level )
*/
HB_FUNC_STATIC( QWINDOW_SETOPACITY )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOpacity( PQREAL(1) );
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
void setParent( QWindow * parent )
*/
HB_FUNC_STATIC( QWINDOW_SETPARENT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWINDOW(1) )
    {
#endif
      obj->setParent( PQWINDOW(1) );
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
void setScreen( QScreen * newScreen )
*/
HB_FUNC_STATIC( QWINDOW_SETSCREEN )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCREEN(1) )
    {
#endif
      obj->setScreen( PQSCREEN(1) );
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
void setSizeIncrement( const QSize & size )
*/
HB_FUNC_STATIC( QWINDOW_SETSIZEINCREMENT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setSizeIncrement( *PQSIZE(1) );
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
void setSurfaceType( QSurface::SurfaceType surfaceType )
*/
HB_FUNC_STATIC( QWINDOW_SETSURFACETYPE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSurfaceType( (QSurface::SurfaceType) hb_parni(1) );
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
void setTransientParent( QWindow * parent )
*/
HB_FUNC_STATIC( QWINDOW_SETTRANSIENTPARENT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWINDOW(1) )
    {
#endif
      obj->setTransientParent( PQWINDOW(1) );
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
QSize sizeIncrement() const
*/
HB_FUNC_STATIC( QWINDOW_SIZEINCREMENT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeIncrement() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
QWindow * transientParent() const
*/
HB_FUNC_STATIC( QWINDOW_TRANSIENTPARENT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWindow * ptr = obj->transientParent();
      Qt5xHb::createReturnQObjectClass( ptr, "QWINDOW" );
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
void unsetCursor()
*/
HB_FUNC_STATIC( QWINDOW_UNSETCURSOR )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->unsetCursor();
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
int width() const
*/
HB_FUNC_STATIC( QWINDOW_WIDTH )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->width() );
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
Qt::WindowState windowState() const
*/
HB_FUNC_STATIC( QWINDOW_WINDOWSTATE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->windowState() );
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
int x() const
*/
HB_FUNC_STATIC( QWINDOW_X )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->x() );
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
int y() const
*/
HB_FUNC_STATIC( QWINDOW_Y )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->y() );
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
virtual QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QWINDOW_FORMAT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurfaceFormat * ptr = new QSurfaceFormat( obj->format() );
      Qt5xHb::createReturnClass( ptr, "QSURFACEFORMAT", true );
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
virtual QSize size() const
*/
HB_FUNC_STATIC( QWINDOW_SIZE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->size() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
virtual QSurface::SurfaceType surfaceType() const
*/
HB_FUNC_STATIC( QWINDOW_SURFACETYPE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->surfaceType() );
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
bool close()
*/
HB_FUNC_STATIC( QWINDOW_CLOSE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->close() );
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
void hide()
*/
HB_FUNC_STATIC( QWINDOW_HIDE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hide();
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
void lower()
*/
HB_FUNC_STATIC( QWINDOW_LOWER )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->lower();
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
void raise()
*/
HB_FUNC_STATIC( QWINDOW_RAISE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->raise();
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
void setHeight( int arg )
*/
HB_FUNC_STATIC( QWINDOW_SETHEIGHT )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setHeight( PINT(1) );
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
void setVisible( bool visible )
*/
HB_FUNC_STATIC( QWINDOW_SETVISIBLE )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
void setWidth( int arg )
*/
HB_FUNC_STATIC( QWINDOW_SETWIDTH )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWidth( PINT(1) );
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
void setX( int arg )
*/
HB_FUNC_STATIC( QWINDOW_SETX )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setX( PINT(1) );
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
void setY( int arg )
*/
HB_FUNC_STATIC( QWINDOW_SETY )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setY( PINT(1) );
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
void show()
*/
HB_FUNC_STATIC( QWINDOW_SHOW )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->show();
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
void showFullScreen()
*/
HB_FUNC_STATIC( QWINDOW_SHOWFULLSCREEN )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showFullScreen();
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
void showMaximized()
*/
HB_FUNC_STATIC( QWINDOW_SHOWMAXIMIZED )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showMaximized();
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
void showMinimized()
*/
HB_FUNC_STATIC( QWINDOW_SHOWMINIMIZED )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showMinimized();
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
void showNormal()
*/
HB_FUNC_STATIC( QWINDOW_SHOWNORMAL )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showNormal();
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
QPoint position() const
*/
HB_FUNC_STATIC( QWINDOW_POSITION )
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->position() );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
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
void setPosition( const QPoint & pt )
*/
void QWindow_setPosition1()
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPosition( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPosition( int posx, int posy )
*/
void QWindow_setPosition2()
{
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPosition( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWINDOW_SETPOSITION )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWindow_setPosition1();
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    QWindow_setPosition2();
  }
}

/*
void requestUpdate()
*/
HB_FUNC_STATIC( QWINDOW_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QWindow * obj = (QWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->requestUpdate();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QWindowSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWINDOW_ONCONTENTORIENTATIONCHANGED )
{
  QWindowSlots_connect_signal( "contentOrientationChanged(Qt::ScreenOrientation)", "contentOrientationChanged(Qt::ScreenOrientation)" );
}

HB_FUNC_STATIC( QWINDOW_ONFOCUSOBJECTCHANGED )
{
  QWindowSlots_connect_signal( "focusObjectChanged(QObject*)", "focusObjectChanged(QObject*)" );
}

HB_FUNC_STATIC( QWINDOW_ONHEIGHTCHANGED )
{
  QWindowSlots_connect_signal( "heightChanged(int)", "heightChanged(int)" );
}

HB_FUNC_STATIC( QWINDOW_ONSCREENCHANGED )
{
  QWindowSlots_connect_signal( "screenChanged(QScreen*)", "screenChanged(QScreen*)" );
}

HB_FUNC_STATIC( QWINDOW_ONVISIBLECHANGED )
{
  QWindowSlots_connect_signal( "visibleChanged(bool)", "visibleChanged(bool)" );
}

HB_FUNC_STATIC( QWINDOW_ONWIDTHCHANGED )
{
  QWindowSlots_connect_signal( "widthChanged(int)", "widthChanged(int)" );
}

HB_FUNC_STATIC( QWINDOW_ONWINDOWMODALITYCHANGED )
{
  QWindowSlots_connect_signal( "windowModalityChanged(Qt::WindowModality)", "windowModalityChanged(Qt::WindowModality)" );
}

HB_FUNC_STATIC( QWINDOW_ONXCHANGED )
{
  QWindowSlots_connect_signal( "xChanged(int)", "xChanged(int)" );
}

HB_FUNC_STATIC( QWINDOW_ONYCHANGED )
{
  QWindowSlots_connect_signal( "yChanged(int)", "yChanged(int)" );
}

#pragma ENDDUMP
