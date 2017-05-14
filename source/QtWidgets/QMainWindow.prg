/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTOOLBAR
REQUEST QWIDGET
REQUEST QMENU
REQUEST QSIZE
REQUEST QMENUBAR
REQUEST QBYTEARRAY
REQUEST QSTATUSBAR
#endif

CLASS QMainWindow INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addDockWidget
   METHOD addToolBar
   METHOD addToolBarBreak
   METHOD centralWidget
   METHOD corner
   METHOD createPopupMenu
   METHOD dockOptions
   METHOD dockWidgetArea
   METHOD documentMode
   METHOD iconSize
   METHOD insertToolBar
   METHOD insertToolBarBreak
   METHOD isAnimated
   METHOD isDockNestingEnabled
   METHOD menuBar
   METHOD menuWidget
   METHOD removeDockWidget
   METHOD removeToolBar
   METHOD removeToolBarBreak
   METHOD restoreDockWidget
   METHOD restoreState
   METHOD saveState
   METHOD setCentralWidget
   METHOD setCorner
   METHOD setDockOptions
   METHOD setDocumentMode
   METHOD setIconSize
   METHOD setMenuBar
   METHOD setMenuWidget
   METHOD setStatusBar
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setToolButtonStyle
   METHOD splitDockWidget
   METHOD statusBar
   METHOD tabPosition
   METHOD tabShape
   METHOD tabifyDockWidget
   METHOD toolBarArea
   METHOD toolBarBreak
   METHOD toolButtonStyle
   METHOD setAnimated
   METHOD setDockNestingEnabled
   METHOD takeCentralWidget

   METHOD onIconSizeChanged
   METHOD onToolButtonStyleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMainWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMainWindow>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMainWindow>
#endif

/*
QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QMainWindow * o = new QMainWindow ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QMAINWINDOW_DELETE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
*/
void QMainWindow_addDockWidget1 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QDockWidget * par2 = (QDockWidget *) _qt5xhb_itemGetPtr(2);
    obj->addDockWidget (  (Qt::DockWidgetArea) par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/
void QMainWindow_addDockWidget2 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QDockWidget * par2 = (QDockWidget *) _qt5xhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    obj->addDockWidget (  (Qt::DockWidgetArea) par1, par2,  (Qt::Orientation) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
//[2]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    QMainWindow_addDockWidget1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
  {
    QMainWindow_addDockWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
*/
void QMainWindow_addToolBar1 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QToolBar * par2 = (QToolBar *) _qt5xhb_itemGetPtr(2);
    obj->addToolBar (  (Qt::ToolBarArea) par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addToolBar ( QToolBar * toolbar )
*/
void QMainWindow_addToolBar2 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
    obj->addToolBar ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QToolBar * addToolBar ( const QString & title )
*/
void QMainWindow_addToolBar3 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QToolBar * ptr = obj->addToolBar ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QTOOLBAR" );
  }
}

//[1]void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
//[2]void addToolBar ( QToolBar * toolbar )
//[3]QToolBar * addToolBar ( const QString & title )

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQTOOLBAR(2) )
  {
    QMainWindow_addToolBar1();
  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    QMainWindow_addToolBar2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMainWindow_addToolBar3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) Qt::TopToolBarArea : hb_parni(1);
      obj->addToolBarBreak (  (Qt::ToolBarArea) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * centralWidget () const
*/
HB_FUNC_STATIC( QMAINWINDOW_CENTRALWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->centralWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
Qt::DockWidgetArea corner ( Qt::Corner corner ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_CORNER )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      hb_retni( obj->corner (  (Qt::Corner) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QMenu * createPopupMenu ()
*/
HB_FUNC_STATIC( QMAINWINDOW_CREATEPOPUPMENU )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->createPopupMenu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
DockOptions dockOptions () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dockOptions (  ) );
  }
}

/*
Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKWIDGETAREA )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDOCKWIDGET(1) )
    {
      QDockWidget * par1 = (QDockWidget *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->dockWidgetArea ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool documentMode () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCUMENTMODE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->documentMode (  ) );
  }
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ICONSIZE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void insertToolBar ( QToolBar * before, QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBAR )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTOOLBAR(1) && ISQTOOLBAR(2) )
    {
      QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
      QToolBar * par2 = (QToolBar *) _qt5xhb_itemGetPtr(2);
      obj->insertToolBar ( par1, par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertToolBarBreak ( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTOOLBAR(1) )
    {
      QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
      obj->insertToolBarBreak ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISANIMATED )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isAnimated (  ) );
  }
}

/*
bool isDockNestingEnabled () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISDOCKNESTINGENABLED )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isDockNestingEnabled (  ) );
  }
}

/*
QMenuBar * menuBar () const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUBAR )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenuBar * ptr = obj->menuBar (  );
    _qt5xhb_createReturnClass ( ptr, "QMENUBAR" );
  }
}

/*
QWidget * menuWidget () const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->menuWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void removeDockWidget ( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVEDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDOCKWIDGET(1) )
    {
      QDockWidget * par1 = (QDockWidget *) _qt5xhb_itemGetPtr(1);
      obj->removeDockWidget ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeToolBar ( QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBAR )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTOOLBAR(1) )
    {
      QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
      obj->removeToolBar ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeToolBarBreak ( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTOOLBAR(1) )
    {
      QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
      obj->removeToolBarBreak ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool restoreDockWidget ( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTOREDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDOCKWIDGET(1) )
    {
      QDockWidget * par1 = (QDockWidget *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->restoreDockWidget ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool restoreState ( const QByteArray & state, int version = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTORESTATE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) && ISOPTNUM(2) )
    {
      QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->restoreState ( *par1, (int) ISNIL(2)? 0 : hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray saveState ( int version = 0 ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SAVESTATE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      QByteArray * ptr = new QByteArray( obj->saveState ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCentralWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCENTRALWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
      obj->setCentralWidget ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCORNER )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      int par1 = hb_parni(1);
      int par2 = hb_parni(2);
      obj->setCorner (  (Qt::Corner) par1,  (Qt::DockWidgetArea) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDockOptions ( DockOptions options )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setDockOptions (  (QMainWindow::DockOptions) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocumentMode ( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCUMENTMODE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDocumentMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETICONSIZE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
      obj->setIconSize ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuBar ( QMenuBar * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUBAR )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMENUBAR(1) )
    {
      QMenuBar * par1 = (QMenuBar *) _qt5xhb_itemGetPtr(1);
      obj->setMenuBar ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuWidget ( QWidget * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
      obj->setMenuWidget ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusBar ( QStatusBar * statusbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETSTATUSBAR )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQSTATUSBAR(1)||ISNIL(1)) )
    {
      QStatusBar * par1 = ISNIL(1)? 0 : (QStatusBar *) _qt5xhb_itemGetPtr(1);
      obj->setStatusBar ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABPOSITION )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      int par1 = hb_parni(1);
      int par2 = hb_parni(2);
      obj->setTabPosition (  (Qt::DockWidgetAreas) par1,  (QTabWidget::TabPosition) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabShape ( QTabWidget::TabShape tabShape )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABSHAPE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTabShape (  (QTabWidget::TabShape) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTOOLBUTTONSTYLE )
{

  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setToolButtonStyle (  (Qt::ToolButtonStyle) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QMAINWINDOW_SPLITDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDOCKWIDGET(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
    {
      QDockWidget * par1 = (QDockWidget *) _qt5xhb_itemGetPtr(1);
      QDockWidget * par2 = (QDockWidget *) _qt5xhb_itemGetPtr(2);
      int par3 = hb_parni(3);
      obj->splitDockWidget ( par1, par2,  (Qt::Orientation) par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStatusBar * statusBar () const
*/
HB_FUNC_STATIC( QMAINWINDOW_STATUSBAR )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStatusBar * ptr = obj->statusBar (  );
    _qt5xhb_createReturnClass ( ptr, "QSTATUSBAR" );
  }
}

/*
QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABPOSITION )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      hb_retni( obj->tabPosition (  (Qt::DockWidgetArea) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTabWidget::TabShape tabShape () const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABSHAPE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->tabShape (  ) );
  }
}

/*
void tabifyDockWidget ( QDockWidget * first, QDockWidget * second )
*/
HB_FUNC_STATIC( QMAINWINDOW_TABIFYDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDOCKWIDGET(1) && ISQDOCKWIDGET(2) )
    {
      QDockWidget * par1 = (QDockWidget *) _qt5xhb_itemGetPtr(1);
      QDockWidget * par2 = (QDockWidget *) _qt5xhb_itemGetPtr(2);
      obj->tabifyDockWidget ( par1, par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARAREA )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTOOLBAR(1) )
    {
      QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->toolBarArea ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool toolBarBreak ( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTOOLBAR(1) )
    {
      QToolBar * par1 = (QToolBar *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->toolBarBreak ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBUTTONSTYLE )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toolButtonStyle (  ) );
  }
}

/*
void setAnimated ( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETANIMATED )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAnimated ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDockNestingEnabled ( bool enabled ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKNESTINGENABLED )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDockNestingEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * takeCentralWidget ()
*/
HB_FUNC_STATIC( QMAINWINDOW_TAKECENTRALWIDGET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->takeCentralWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
#endif
}

#pragma ENDDUMP
