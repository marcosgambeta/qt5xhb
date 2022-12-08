/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStackedLayoutSlots.h"

QStackedLayoutSlots::QStackedLayoutSlots( QObject *parent ) : QObject( parent )
{
}

QStackedLayoutSlots::~QStackedLayoutSlots()
{
}

void QStackedLayoutSlots::setCurrentIndex( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "setCurrentIndex(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSTACKEDLAYOUT" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QStackedLayoutSlots::setCurrentWidget( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "setCurrentWidget(QWidget*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSTACKEDLAYOUT" );
    PHB_ITEM pwidget = Qt5xHb::Signals_return_qobject( (QObject *) widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, psender, pwidget );

    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}

void QStackedLayoutSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStackedLayout * obj = (QStackedLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QStackedLayoutSlots * s = QCoreApplication::instance()->findChild<QStackedLayoutSlots *>();

    if( s == NULL )
    {
      s = new QStackedLayoutSlots();
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
