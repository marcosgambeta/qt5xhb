/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
REQUEST QTABBAR
REQUEST QWIDGET
#endif

CLASS QTabWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addTab
   METHOD clear
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD count
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD currentWidget
   METHOD setCurrentWidget
   METHOD documentMode
   METHOD setDocumentMode
   METHOD elideMode
   METHOD setElideMode
   METHOD iconSize
   METHOD setIconSize
   METHOD indexOf
   METHOD insertTab
   METHOD isMovable
   METHOD setMovable
   METHOD isTabEnabled
   METHOD setTabEnabled
   METHOD removeTab
   METHOD tabIcon
   METHOD setTabIcon
   METHOD tabPosition
   METHOD setTabPosition
   METHOD tabShape
   METHOD setTabShape
   METHOD tabText
   METHOD setTabText
   METHOD tabToolTip
   METHOD setTabToolTip
   METHOD tabWhatsThis
   METHOD setTabWhatsThis
   METHOD usesScrollButtons
   METHOD setUsesScrollButtons
   METHOD tabsClosable
   METHOD setTabsClosable
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD heightForWidth
   METHOD hasHeightForWidth
   METHOD tabBarAutoHide
   METHOD setTabBarAutoHide
   METHOD tabBar

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabBarClicked
   METHOD onTabBarDoubleClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTabWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QTabWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QTabWidget>
#endif

#include <QtWidgets/QTabBar>

/*
QTabWidget( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QTabWidget * obj = new QTabWidget( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTABWIDGET_DELETE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
int addTab( QWidget * page, const QString & label )
*/
void QTabWidget_addTab1()
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->addTab( PQWIDGET(1), PQSTRING(2) ) );
  }
}

/*
int addTab( QWidget * page, const QIcon & icon, const QString & label )
*/
void QTabWidget_addTab2()
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->addTab( PQWIDGET(1), HB_ISOBJECT(2)? *(QIcon *) Qt5xHb::itemGetPtr(2) : QIcon(hb_parc(2)), PQSTRING(3) ) );
  }
}

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && HB_ISCHAR(2) )
  {
    QTabWidget_addTab1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||HB_ISCHAR(2)) && HB_ISCHAR(3) )
  {
    QTabWidget_addTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QTABWIDGET_CLEAR )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QWidget * cornerWidget( Qt::Corner corner = Qt::TopRightCorner ) const
*/
HB_FUNC_STATIC( QTABWIDGET_CORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      QWidget * ptr = obj->cornerWidget( HB_ISNIL(1)? (Qt::Corner) Qt::TopRightCorner : (Qt::Corner) hb_parni(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void setCornerWidget( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->setCornerWidget( PQWIDGET(1), HB_ISNIL(2)? (Qt::Corner) Qt::TopRightCorner : (Qt::Corner) hb_parni(2) );
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
int count() const
*/
HB_FUNC_STATIC( QTABWIDGET_COUNT )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
int currentIndex() const
*/
HB_FUNC_STATIC( QTABWIDGET_CURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentIndex() );
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
void setCurrentIndex( int index )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCurrentIndex( PINT(1) );
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
QWidget * currentWidget() const
*/
HB_FUNC_STATIC( QTABWIDGET_CURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->currentWidget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void setCurrentWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setCurrentWidget( PQWIDGET(1) );
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
bool documentMode() const
*/
HB_FUNC_STATIC( QTABWIDGET_DOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->documentMode() );
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
void setDocumentMode( bool set )
*/
HB_FUNC_STATIC( QTABWIDGET_SETDOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDocumentMode( PBOOL(1) );
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
Qt::TextElideMode elideMode() const
*/
HB_FUNC_STATIC( QTABWIDGET_ELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->elideMode() );
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
void setElideMode( Qt::TextElideMode )
*/
HB_FUNC_STATIC( QTABWIDGET_SETELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setElideMode( (Qt::TextElideMode) hb_parni(1) );
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
QSize iconSize() const
*/
HB_FUNC_STATIC( QTABWIDGET_ICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->iconSize() );
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
void setIconSize( const QSize & size )
*/
HB_FUNC_STATIC( QTABWIDGET_SETICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setIconSize( *PQSIZE(1) );
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
int indexOf( QWidget * w ) const
*/
HB_FUNC_STATIC( QTABWIDGET_INDEXOF )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      RINT( obj->indexOf( PQWIDGET(1) ) );
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
int insertTab( int index, QWidget * page, const QString & label )
*/
void QTabWidget_insertTab1()
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->insertTab( PINT(1), PQWIDGET(2), PQSTRING(3) ) );
  }
}

/*
int insertTab( int index, QWidget * page, const QIcon & icon, const QString & label )
*/
void QTabWidget_insertTab2()
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->insertTab( PINT(1), PQWIDGET(2), HB_ISOBJECT(3)? *(QIcon *) Qt5xHb::itemGetPtr(3) : QIcon(hb_parc(3)), PQSTRING(4) ) );
  }
}

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && ISQWIDGET(2) && HB_ISCHAR(3) )
  {
    QTabWidget_insertTab1();
  }
  else if( ISNUMPAR(4) && HB_ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||HB_ISCHAR(3)) && HB_ISCHAR(4) )
  {
    QTabWidget_insertTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isMovable() const
*/
HB_FUNC_STATIC( QTABWIDGET_ISMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMovable() );
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
void setMovable( bool movable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMovable( PBOOL(1) );
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
bool isTabEnabled( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_ISTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isTabEnabled( PINT(1) ) );
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
void setTabEnabled( int index, bool enable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2) )
    {
#endif
      obj->setTabEnabled( PINT(1), PBOOL(2) );
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
void removeTab( int index )
*/
HB_FUNC_STATIC( QTABWIDGET_REMOVETAB )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->removeTab( PINT(1) );
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
QIcon tabIcon( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABICON )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QIcon * ptr = new QIcon( obj->tabIcon( PINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
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
void setTabIcon( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABICON )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && (ISQICON(2)||HB_ISCHAR(2)) )
    {
#endif
      obj->setTabIcon( PINT(1), HB_ISOBJECT(2)? *(QIcon *) Qt5xHb::itemGetPtr(2) : QIcon(hb_parc(2)) );
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
QTabWidget::TabPosition tabPosition() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->tabPosition() );
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
void setTabPosition( QTabWidget::TabPosition )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTabPosition( (QTabWidget::TabPosition) hb_parni(1) );
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
QTabWidget::TabShape tabShape() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->tabShape() );
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
void setTabShape( QTabWidget::TabShape s )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTabShape( (QTabWidget::TabShape) hb_parni(1) );
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
QString tabText( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABTEXT )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->tabText( PINT(1) ) );
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
void setTabText( int index, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABTEXT )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setTabText( PINT(1), PQSTRING(2) );
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
QString tabToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->tabToolTip( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTabToolTip ( int index, const QString & tip )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setTabToolTip( PINT(1), PQSTRING(2) );
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

/*
QString tabWhatsThis ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->tabWhatsThis( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTabWhatsThis ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setTabWhatsThis( PINT(1), PQSTRING(2) );
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

/*
bool usesScrollButtons() const
*/
HB_FUNC_STATIC( QTABWIDGET_USESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->usesScrollButtons() );
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
void setUsesScrollButtons( bool useButtons )
*/
HB_FUNC_STATIC( QTABWIDGET_SETUSESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setUsesScrollButtons( PBOOL(1) );
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
bool tabsClosable() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->tabsClosable() );
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
void setTabsClosable( bool closeable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setTabsClosable( PBOOL(1) );
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
QWidget * widget( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_WIDGET )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QWidget * ptr = obj->widget( PINT(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QTABWIDGET_MINIMUMSIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint() );
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
QSize sizeHint() const
*/
HB_FUNC_STATIC( QTABWIDGET_SIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
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
int heightForWidth( int width ) const
*/
HB_FUNC_STATIC( QTABWIDGET_HEIGHTFORWIDTH )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->heightForWidth( PINT(1) ) );
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
bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QTABWIDGET_HASHEIGHTFORWIDTH )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasHeightForWidth() );
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
bool tabBarAutoHide() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABBARAUTOHIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->tabBarAutoHide() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTabBarAutoHide( bool enabled )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABBARAUTOHIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setTabBarAutoHide( PBOOL(1) );
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

/*
QTabBar * tabBar() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABBAR )
{
  QTabWidget * obj = (QTabWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTabBar * ptr = obj->tabBar();
      Qt5xHb::createReturnQWidgetClass( ptr, "QTABBAR" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QTabWidgetSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTABWIDGET_ONCURRENTCHANGED )
{
  QTabWidgetSlots_connect_signal( "currentChanged(int)", "currentChanged(int)" );
}

HB_FUNC_STATIC( QTABWIDGET_ONTABCLOSEREQUESTED )
{
  QTabWidgetSlots_connect_signal( "tabCloseRequested(int)", "tabCloseRequested(int)" );
}

HB_FUNC_STATIC( QTABWIDGET_ONTABBARCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTabWidgetSlots_connect_signal( "tabBarClicked(int)", "tabBarClicked(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QTABWIDGET_ONTABBARDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTabWidgetSlots_connect_signal( "tabBarDoubleClicked(int)", "tabBarDoubleClicked(int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
