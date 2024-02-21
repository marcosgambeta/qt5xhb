/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QVirtualKeyboardTrace INHERIT QObject

   METHOD new
   METHOD delete
   METHOD traceId
   METHOD setTraceId
   METHOD channels
   METHOD setChannels
   METHOD length
   METHOD isFinal
   METHOD setFinal
   METHOD isCanceled
   METHOD setCanceled
   METHOD opacity
   METHOD setOpacity
   METHOD points
   METHOD addPoint
   METHOD setChannelData
   METHOD channelData

   METHOD onTraceIdChanged
   METHOD onChannelsChanged
   METHOD onLengthChanged
   METHOD onFinalChanged
   METHOD onCanceledChanged
   METHOD onOpacityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardTrace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardTrace>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardTrace>
#endif

/*
QVirtualKeyboardTrace( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QVirtualKeyboardTrace * obj = new QVirtualKeyboardTrace( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QVirtualKeyboardTrace()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_DELETE )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
int traceId() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_TRACEID )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->traceId() );
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
void setTraceId( int id )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_SETTRACEID )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTraceId( PINT(1) );
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
QStringList channels() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_CHANNELS )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->channels() );
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
void setChannels( const QStringList & channels )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_SETCHANNELS )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setChannels( PQSTRINGLIST(1) );
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
int length() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_LENGTH )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->length() );
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
bool isFinal() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ISFINAL )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinal() );
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
void setFinal( bool final )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_SETFINAL )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setFinal( PBOOL(1) );
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
bool isCanceled() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ISCANCELED )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCanceled() );
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
void setCanceled( bool canceled )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_SETCANCELED )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setCanceled( PBOOL(1) );
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
qreal opacity() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_OPACITY )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->opacity() );
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
void setOpacity( qreal opacity )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_SETOPACITY )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Q_INVOKABLE QVariantList points( int pos = 0, int count = -1 ) const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_POINTS )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (HB_ISNUM(1)||HB_ISNIL(1)) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QVariantList list = obj->points( OPINT(1,0), OPINT(2,-1) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QVARIANT");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QVariant(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QVARIANT", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
Q_INVOKABLE int addPoint( const QPointF & point )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ADDPOINT )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      RINT( obj->addPoint( *PQPOINTF(1) ) );
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
Q_INVOKABLE void setChannelData( const QString & channel, int index, const QVariant & data )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_SETCHANNELDATA )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISNUM(2) && ISQVARIANT(3) )
    {
#endif
      obj->setChannelData( PQSTRING(1), PINT(2), *PQVARIANT(3) );
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
Q_INVOKABLE QVariantList channelData( const QString & channel, int pos = 0, int count = -1 ) const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_CHANNELDATA )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      QVariantList list = obj->channelData( PQSTRING(1), OPINT(2,0), OPINT(3,-1) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QVARIANT");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QVariant(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QVARIANT", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QVirtualKeyboardTraceSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ONTRACEIDCHANGED )
{
  QVirtualKeyboardTraceSlots_connect_signal("traceIdChanged(int)", "traceIdChanged(int)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ONCHANNELSCHANGED )
{
  QVirtualKeyboardTraceSlots_connect_signal("channelsChanged()", "channelsChanged()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ONLENGTHCHANGED )
{
  QVirtualKeyboardTraceSlots_connect_signal("lengthChanged(int)", "lengthChanged(int)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ONFINALCHANGED )
{
  QVirtualKeyboardTraceSlots_connect_signal("finalChanged(bool)", "finalChanged(bool)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ONCANCELEDCHANGED )
{
  QVirtualKeyboardTraceSlots_connect_signal("canceledChanged(bool)", "canceledChanged(bool)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDTRACE_ONOPACITYCHANGED )
{
  QVirtualKeyboardTraceSlots_connect_signal("opacityChanged(qreal)", "opacityChanged(qreal)");
}

#pragma ENDDUMP
