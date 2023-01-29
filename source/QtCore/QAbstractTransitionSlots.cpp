/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractTransitionSlots.hpp"

QAbstractTransitionSlots::QAbstractTransitionSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractTransitionSlots::~QAbstractTransitionSlots()
{
}

void QAbstractTransitionSlots::triggered()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "triggered()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTTRANSITION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAbstractTransitionSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAbstractTransition * obj = (QAbstractTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractTransitionSlots * s = QCoreApplication::instance()->findChild<QAbstractTransitionSlots*>();

    if( s == NULL )
    {
      s = new QAbstractTransitionSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
