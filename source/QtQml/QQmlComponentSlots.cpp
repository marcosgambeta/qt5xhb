/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQmlComponentSlots.hpp"

QQmlComponentSlots::QQmlComponentSlots( QObject *parent ) : QObject( parent )
{
}

QQmlComponentSlots::~QQmlComponentSlots()
{
}

void QQmlComponentSlots::progressChanged( qreal progress )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "progressChanged(qreal)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QQMLCOMPONENT");
    PHB_ITEM pprogress = hb_itemPutND( NULL, progress );

    hb_vmEvalBlockV(cb, 2, psender, pprogress);

    hb_itemRelease(psender);
    hb_itemRelease( pprogress );
  }
}

void QQmlComponentSlots::statusChanged( QQmlComponent::Status status )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "statusChanged(QQmlComponent::Status)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QQMLCOMPONENT");
    PHB_ITEM pstatus = hb_itemPutNI( NULL, static_cast<int>(status) );

    hb_vmEvalBlockV(cb, 2, psender, pstatus);

    hb_itemRelease(psender);
    hb_itemRelease( pstatus );
  }
}

void QQmlComponentSlots_connect_signal(const QString & signal, const QString & slot)
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QQmlComponentSlots * s = QCoreApplication::instance()->findChild<QQmlComponentSlots*>();

    if( s == NULL )
    {
      s = new QQmlComponentSlots();
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
