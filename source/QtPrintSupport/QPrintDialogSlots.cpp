/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintDialogSlots.h"

QPrintDialogSlots::QPrintDialogSlots( QObject *parent ) : QObject( parent )
{
}

QPrintDialogSlots::~QPrintDialogSlots()
{
}

void QPrintDialogSlots::accepted( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "accepted(QPrinter*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPRINTDIALOG" );
    PHB_ITEM pprinter = Signals_return_object( (void *) printer, "QPRINTER" );

    hb_vmEvalBlockV( cb, 2, psender, pprinter );

    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

void QPrintDialogSlots_connect_signal( const QString & signal, const QString & slot )
{
  QPrintDialog * obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPrintDialogSlots * s = QCoreApplication::instance()->findChild<QPrintDialogSlots *>();

    if( s == NULL )
    {
      s = new QPrintDialogSlots();
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
