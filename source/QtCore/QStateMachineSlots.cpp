/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStateMachineSlots.hpp"

QStateMachineSlots::QStateMachineSlots( QObject *parent ) : QObject( parent )
{
}

QStateMachineSlots::~QStateMachineSlots()
{
}

void QStateMachineSlots::started()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "started()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSTATEMACHINE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QStateMachineSlots::stopped()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stopped()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSTATEMACHINE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QStateMachineSlots_connect_signal(const QString & signal, const QString & slot)
{
  QStateMachine * obj = (QStateMachine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QStateMachineSlots * s = QCoreApplication::instance()->findChild<QStateMachineSlots*>();

    if( s == NULL )
    {
      s = new QStateMachineSlots();
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
