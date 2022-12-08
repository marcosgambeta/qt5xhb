/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSplitterSlots.h"

QSplitterSlots::QSplitterSlots( QObject *parent ) : QObject( parent )
{
}

QSplitterSlots::~QSplitterSlots()
{
}

void QSplitterSlots::splitterMoved( int pos, int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "splitterMoved(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSPLITTER" );
    PHB_ITEM ppos = hb_itemPutNI( NULL, pos );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 3, psender, ppos, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( ppos );
    hb_itemRelease( pindex );
  }
}

void QSplitterSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSplitter * obj = (QSplitter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSplitterSlots * s = QCoreApplication::instance()->findChild<QSplitterSlots *>();

    if( s == NULL )
    {
      s = new QSplitterSlots();
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
