/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QRECT
REQUEST QICON
#endif

CLASS QSystemTrayIcon INHERIT QObject

   METHOD new
   METHOD delete
   METHOD contextMenu
   METHOD geometry
   METHOD icon
   METHOD isVisible
   METHOD setContextMenu
   METHOD setIcon
   METHOD setToolTip
   METHOD showMessage
   METHOD toolTip
   METHOD hide
   METHOD setVisible
   METHOD show
   METHOD isSystemTrayAvailable
   METHOD supportsMessages

   METHOD onActivated
   METHOD onMessageClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSystemTrayIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSystemTrayIcon>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSystemTrayIcon>
#endif

#include <QMenu>

/*
QSystemTrayIcon(QObject * parent = 0)
*/
void QSystemTrayIcon_new1 ()
{
  QSystemTrayIcon * o = new QSystemTrayIcon ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)
*/
void QSystemTrayIcon_new2 ()
{
  QSystemTrayIcon * o = new QSystemTrayIcon ( ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1)), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QSystemTrayIcon(QObject * parent = 0)
//[2]QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSystemTrayIcon_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||ISCHAR(1)) && ISOPTQOBJECT(2) )
  {
    QSystemTrayIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_DELETE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

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
QMenu * contextMenu() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_CONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMenu * ptr = obj->contextMenu ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect geometry() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_GEOMETRY )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->geometry () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon icon() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ICON )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon () );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isVisible() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISVISIBLE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setContextMenu(QMenu * menu)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETCONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMENU(1) )
    {
      obj->setContextMenu ( PQMENU(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon(const QIcon & icon)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETICON )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQICON(1)||ISCHAR(1)) )
    {
      obj->setIcon ( ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip(const QString & tip)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETTOOLTIP )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setToolTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage(const QString & title, const QString & message, MessageIcon icon = Information, int millisecondsTimeoutHint = 10000)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SHOWMESSAGE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      obj->showMessage ( PQSTRING(1), PQSTRING(2), ISNIL(3)? (QSystemTrayIcon::MessageIcon) QSystemTrayIcon::Information : (QSystemTrayIcon::MessageIcon) hb_parni(3), OPINT(4,10000) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toolTip() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_TOOLTIP )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toolTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void hide()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_HIDE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->hide ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETVISIBLE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void show()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SHOW )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->show ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool isSystemTrayAvailable()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISSYSTEMTRAYAVAILABLE )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QSystemTrayIcon::isSystemTrayAvailable () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool supportsMessages()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SUPPORTSMESSAGES )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QSystemTrayIcon::supportsMessages () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

void QSystemTrayIconSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSYSTEMTRAYICON_ONACTIVATED )
{
  QSystemTrayIconSlots_connect_signal( "activated(QSystemTrayIcon::ActivationReason)", "activated(QSystemTrayIcon::ActivationReason)" );
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_ONMESSAGECLICKED )
{
  QSystemTrayIconSlots_connect_signal( "messageClicked()", "messageClicked()" );
}


#pragma ENDDUMP
