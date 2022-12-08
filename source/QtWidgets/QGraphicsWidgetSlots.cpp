/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsWidgetSlots.h"

QGraphicsWidgetSlots::QGraphicsWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QGraphicsWidgetSlots::~QGraphicsWidgetSlots()
{
}

void QGraphicsWidgetSlots::geometryChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "geometryChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSWIDGET" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsWidgetSlots * s = QCoreApplication::instance()->findChild<QGraphicsWidgetSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsWidgetSlots();
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
