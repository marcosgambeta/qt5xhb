/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractBarSeriesSlots.h"

QAbstractBarSeriesSlots::QAbstractBarSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractBarSeriesSlots::~QAbstractBarSeriesSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::barsetsAdded( QList<QBarSet*> sets )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "barsetsAdded(QList<QBarSet*>)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
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
        PHB_ITEM pTempItem = hb_itemPutPtr( NULL, sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, psets );

    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::barsetsRemoved( QList<QBarSet*> sets )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "barsetsRemoved(QList<QBarSet*>)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
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
        PHB_ITEM pTempItem = hb_itemPutPtr( NULL, sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, psets );

    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::clicked( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clicked(int,QBarSet*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = Qt5xHb::Signals_return_qobject(barset, "QBARSET");

    hb_vmEvalBlockV( cb, 3, psender, pindex, pbarset );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::countChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "countChanged()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::doubleClicked( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "doubleClicked(int,QBarSet*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = Qt5xHb::Signals_return_qobject(barset, "QBARSET");

    hb_vmEvalBlockV( cb, 3, psender, pindex, pbarset );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::hovered( bool status, int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "hovered(bool,int,QBarSet*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = Qt5xHb::Signals_return_qobject(barset, "QBARSET");

    hb_vmEvalBlockV( cb, 4, psender, pstatus, pindex, pbarset );

    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsAngleChanged( qreal angle )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "labelsAngleChanged(qreal)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pangle = hb_itemPutND( NULL, angle );

    hb_vmEvalBlockV( cb, 2, psender, pangle );

    hb_itemRelease( psender );
    hb_itemRelease( pangle );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "labelsFormatChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );

    hb_vmEvalBlockV( cb, 2, psender, pformat );

    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "labelsPositionChanged(QAbstractBarSeries::LabelsPosition)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pposition = hb_itemPutNI( NULL, (int) position );

    hb_vmEvalBlockV( cb, 2, psender, pposition );

    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsVisibleChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "labelsVisibleChanged()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::pressed( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "pressed(int,QBarSet*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = Qt5xHb::Signals_return_qobject(barset, "QBARSET");

    hb_vmEvalBlockV( cb, 3, psender, pindex, pbarset );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::released( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "released(int,QBarSet*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTBARSERIES");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = Qt5xHb::Signals_return_qobject(barset, "QBARSET");

    hb_vmEvalBlockV( cb, 3, psender, pindex, pbarset );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif

void QAbstractBarSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractBarSeriesSlots * s = QCoreApplication::instance()->findChild<QAbstractBarSeriesSlots*>();

    if( s == NULL )
    {
      s = new QAbstractBarSeriesSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
