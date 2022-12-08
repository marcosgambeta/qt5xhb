/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCandlestickSeriesSlots.h"

QCandlestickSeriesSlots::QCandlestickSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QCandlestickSeriesSlots::~QCandlestickSeriesSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::bodyOutlineVisibilityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "bodyOutlineVisibilityChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::bodyWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "bodyWidthChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "brushChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::candlestickSetsAdded( const QList<QCandlestickSet*> & sets )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "candlestickSetsAdded(QList<QCandlestickSet*>)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QCANDLESTICKSET" );
    PHB_ITEM psets = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < sets.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QCandlestickSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANDLESTICKSET", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, psets );

    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::candlestickSetsRemoved( const QList<QCandlestickSet*> & sets )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "candlestickSetsRemoved(QList<QCandlestickSet*>)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QCANDLESTICKSET" );
    PHB_ITEM psets = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < sets.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QCandlestickSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANDLESTICKSET", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, psets );

    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::capsVisibilityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "capsVisibilityChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::capsWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "capsWidthChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::clicked( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clicked(QCandlestickSet*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_ITEM pset = Qt5xHb::Signals_return_qobject( (QObject *) set, "QCANDLESTICKSET" );

    hb_vmEvalBlockV( cb, 2, psender, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::countChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "countChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::decreasingColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "decreasingColorChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::doubleClicked( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "doubleClicked(QCandlestickSet*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_ITEM pset = Qt5xHb::Signals_return_qobject( (QObject *) set, "QCANDLESTICKSET" );

    hb_vmEvalBlockV( cb, 2, psender, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::hovered( bool status, QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "hovered(bool,QCandlestickSet*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    PHB_ITEM pset = Qt5xHb::Signals_return_qobject( (QObject *) set, "QCANDLESTICKSET" );

    hb_vmEvalBlockV( cb, 3, psender, pstatus, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( pset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::increasingColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "increasingColorChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::maximumColumnWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "maximumColumnWidthChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::minimumColumnWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "minimumColumnWidthChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "penChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::pressed( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "pressed(QCandlestickSet*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_ITEM pset = Qt5xHb::Signals_return_qobject( (QObject *) set, "QCANDLESTICKSET" );

    hb_vmEvalBlockV( cb, 2, psender, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::released( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "released(QCandlestickSet*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCANDLESTICKSERIES" );
    PHB_ITEM pset = Qt5xHb::Signals_return_qobject( (QObject *) set, "QCANDLESTICKSET" );

    hb_vmEvalBlockV( cb, 2, psender, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

void QCandlestickSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCandlestickSeriesSlots * s = QCoreApplication::instance()->findChild<QCandlestickSeriesSlots *>();

    if( s == NULL )
    {
      s = new QCandlestickSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
