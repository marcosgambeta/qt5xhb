/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QIntValidatorSlots.hpp"

QIntValidatorSlots::QIntValidatorSlots( QObject *parent ) : QObject( parent )
{
}

QIntValidatorSlots::~QIntValidatorSlots()
{
}

void QIntValidatorSlots::changed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "changed()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QINTVALIDATOR");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QIntValidatorSlots_connect_signal(const QString & signal, const QString & slot)
{
  QIntValidator * obj = (QIntValidator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QIntValidatorSlots * s = QCoreApplication::instance()->findChild<QIntValidatorSlots*>();

    if( s == NULL )
    {
      s = new QIntValidatorSlots();
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
