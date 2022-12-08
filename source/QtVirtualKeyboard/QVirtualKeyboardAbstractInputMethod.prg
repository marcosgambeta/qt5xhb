/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVIRTUALKEYBOARDINPUTCONTEXT
REQUEST QVIRTUALKEYBOARDINPUTENGINE
#endif

CLASS QVirtualKeyboardAbstractInputMethod INHERIT QObject

   METHOD new
   METHOD delete
   METHOD inputContext
   METHOD inputEngine
   METHOD inputModes
   METHOD setInputMode
   METHOD setTextCase
   METHOD keyEvent
   METHOD selectionLists
   METHOD selectionListItemCount
   METHOD selectionListData
   METHOD selectionListItemSelected
   METHOD selectionListRemoveItem
   METHOD patternRecognitionModes
   METHOD traceEnd
   METHOD clickPreeditText
   METHOD reset
   METHOD update

   METHOD onSelectionListChanged
   METHOD onSelectionListActiveItemChanged
   METHOD onSelectionListsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardAbstractInputMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#endif

/*
QVirtualKeyboardAbstractInputMethod( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QVirtualKeyboardAbstractInputMethod * obj = new QVirtualKeyboardAbstractInputMethod( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QVirtualKeyboardAbstractInputMethod()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_DELETE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

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
QVirtualKeyboardInputContext * inputContext() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTCONTEXT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputContext * ptr = obj->inputContext();
      Qt5xHb::createReturnQObjectClass( ptr, "QVIRTUALKEYBOARDINPUTCONTEXT" );
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
QVirtualKeyboardInputEngine * inputEngine() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTENGINE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputEngine * ptr = obj->inputEngine();
      Qt5xHb::createReturnQObjectClass( ptr, "QVIRTUALKEYBOARDINPUTENGINE" );
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
virtual QList<QVirtualKeyboardInputEngine::InputMode> inputModes( const QString & locale ) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTMODES )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QList<QVirtualKeyboardInputEngine::InputMode> list = obj->inputModes( PQSTRING(1) );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
virtual bool setInputMode( const QString & locale, QVirtualKeyboardInputEngine::InputMode inputMode ) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SETINPUTMODE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->setInputMode( PQSTRING(1), (QVirtualKeyboardInputEngine::InputMode) hb_parni(2) ) );
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
virtual bool setTextCase( QVirtualKeyboardInputEngine::TextCase textCase ) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SETTEXTCASE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setTextCase( (QVirtualKeyboardInputEngine::TextCase) hb_parni(1) ) );
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
virtual bool keyEvent( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers ) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_KEYEVENT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      RBOOL( obj->keyEvent( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
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
virtual QList<QVirtualKeyboardSelectionListModel::Type> selectionLists()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTS )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QVirtualKeyboardSelectionListModel::Type> list = obj->selectionLists();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
virtual int selectionListItemCount( QVirtualKeyboardSelectionListModel::Type type )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTITEMCOUNT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->selectionListItemCount( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1) ) );
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
virtual QVariant selectionListData( QVirtualKeyboardSelectionListModel::Type type, int index, QVirtualKeyboardSelectionListModel::Role role )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTDATA )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      QVariant * ptr = new QVariant( obj->selectionListData( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1), PINT(2), (QVirtualKeyboardSelectionListModel::Role) hb_parni(3) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
virtual void selectionListItemSelected( QVirtualKeyboardSelectionListModel::Type type, int index )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTITEMSELECTED )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->selectionListItemSelected( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1), PINT(2) );
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
virtual bool selectionListRemoveItem( QVirtualKeyboardSelectionListModel::Type type, int index )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTREMOVEITEM )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->selectionListRemoveItem( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1), PINT(2) ) );
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
virtual QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> patternRecognitionModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_PATTERNRECOGNITIONMODES )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> list = obj->patternRecognitionModes();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
virtual bool traceEnd( QVirtualKeyboardTrace * trace )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_TRACEEND )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDTRACE(1) )
    {
#endif
      RBOOL( obj->traceEnd( PQVIRTUALKEYBOARDTRACE(1) ) );
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
virtual bool clickPreeditText( int cursorPosition )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_CLICKPREEDITTEXT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->clickPreeditText( PINT(1) ) );
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
virtual void reset()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_RESET )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
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
virtual void update()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_UPDATE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QVirtualKeyboardAbstractInputMethodSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTCHANGED )
{
  QVirtualKeyboardAbstractInputMethodSlots_connect_signal( "selectionListChanged(QVirtualKeyboardSelectionListModel::Type)", "selectionListChanged(QVirtualKeyboardSelectionListModel::Type)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTACTIVEITEMCHANGED )
{
  QVirtualKeyboardAbstractInputMethodSlots_connect_signal( "selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)", "selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTSCHANGED )
{
  QVirtualKeyboardAbstractInputMethodSlots_connect_signal( "selectionListsChanged()", "selectionListsChanged()" );
}

#pragma ENDDUMP
