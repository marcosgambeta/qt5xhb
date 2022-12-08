/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDateTimeEditSlots.h"

QDateTimeEditSlots::QDateTimeEditSlots( QObject *parent ) : QObject( parent )
{
}

QDateTimeEditSlots::~QDateTimeEditSlots()
{
}

void QDateTimeEditSlots::dateChanged( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "dateChanged(QDate)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDATETIMEEDIT" );
    PHB_ITEM pdate = Qt5xHb::Signals_return_object( (void *) &date, "QDATE" );

    hb_vmEvalBlockV( cb, 2, psender, pdate );

    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void QDateTimeEditSlots::dateTimeChanged( const QDateTime & datetime )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "dateTimeChanged(QDateTime)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDATETIMEEDIT" );
    PHB_ITEM pdatetime = Qt5xHb::Signals_return_object( (void *) &datetime, "QDATETIME" );

    hb_vmEvalBlockV( cb, 2, psender, pdatetime );

    hb_itemRelease( psender );
    hb_itemRelease( pdatetime );
  }
}

void QDateTimeEditSlots::timeChanged( const QTime & time )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "timeChanged(QTime)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDATETIMEEDIT" );
    PHB_ITEM ptime = Qt5xHb::Signals_return_object( (void *) &time, "QTIME" );

    hb_vmEvalBlockV( cb, 2, psender, ptime );

    hb_itemRelease( psender );
    hb_itemRelease( ptime );
  }
}

void QDateTimeEditSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTimeEditSlots * s = QCoreApplication::instance()->findChild<QDateTimeEditSlots *>();

    if( s == NULL )
    {
      s = new QDateTimeEditSlots();
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
