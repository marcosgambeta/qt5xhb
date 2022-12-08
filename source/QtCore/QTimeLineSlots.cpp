/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTimeLineSlots.h"

QTimeLineSlots::QTimeLineSlots( QObject *parent ) : QObject( parent )
{
}

QTimeLineSlots::~QTimeLineSlots()
{
}

void QTimeLineSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTIMELINE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QTimeLineSlots::frameChanged( int frame )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "frameChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTIMELINE" );
    PHB_ITEM pframe = hb_itemPutNI( NULL, frame );

    hb_vmEvalBlockV( cb, 2, psender, pframe );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void QTimeLineSlots::stateChanged( QTimeLine::State newState )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QTimeLine::State)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTIMELINE" );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );

    hb_vmEvalBlockV( cb, 2, psender, pnewState );

    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

void QTimeLineSlots::valueChanged( qreal value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "valueChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTIMELINE" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV( cb, 2, psender, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void QTimeLineSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTimeLine * obj = (QTimeLine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTimeLineSlots * s = QCoreApplication::instance()->findChild<QTimeLineSlots *>();

    if( s == NULL )
    {
      s = new QTimeLineSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
