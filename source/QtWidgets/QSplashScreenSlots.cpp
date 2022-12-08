/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSplashScreenSlots.h"

QSplashScreenSlots::QSplashScreenSlots( QObject *parent ) : QObject( parent )
{
}

QSplashScreenSlots::~QSplashScreenSlots()
{
}

void QSplashScreenSlots::messageChanged( const QString & message )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "messageChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSPLASHSCREEN" );
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );

    hb_vmEvalBlockV( cb, 2, psender, pmessage );

    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
  }
}

void QSplashScreenSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSplashScreen * obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSplashScreenSlots * s = QCoreApplication::instance()->findChild<QSplashScreenSlots *>();

    if( s == NULL )
    {
      s = new QSplashScreenSlots();
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
