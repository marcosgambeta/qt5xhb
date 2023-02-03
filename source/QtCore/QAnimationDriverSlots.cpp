/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAnimationDriverSlots.hpp"

QAnimationDriverSlots::QAnimationDriverSlots( QObject *parent ) : QObject( parent )
{
}

QAnimationDriverSlots::~QAnimationDriverSlots()
{
}

void QAnimationDriverSlots::started()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "started()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QANIMATIONDRIVER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAnimationDriverSlots::stopped()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stopped()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QANIMATIONDRIVER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAnimationDriverSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAnimationDriver * obj = (QAnimationDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAnimationDriverSlots * s = QCoreApplication::instance()->findChild<QAnimationDriverSlots*>();

    if( s == NULL )
    {
      s = new QAnimationDriverSlots();
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
