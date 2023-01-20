/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QButtonGroupSlots.h"

QButtonGroupSlots::QButtonGroupSlots( QObject *parent ) : QObject( parent )
{
}

QButtonGroupSlots::~QButtonGroupSlots()
{
}

void QButtonGroupSlots::buttonClicked( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonClicked(QAbstractButton*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBUTTONGROUP");
    PHB_ITEM pbutton = Qt5xHb::Signals_return_qobject(button, "QABSTRACTBUTTON");

    hb_vmEvalBlockV(cb, 2, psender, pbutton);

    hb_itemRelease(psender);
    hb_itemRelease( pbutton );
  }
}

void QButtonGroupSlots::buttonClicked( int id )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonClicked(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBUTTONGROUP");
    PHB_ITEM pid = hb_itemPutNI( NULL, id );

    hb_vmEvalBlockV(cb, 2, psender, pid);

    hb_itemRelease(psender);
    hb_itemRelease( pid );
  }
}

void QButtonGroupSlots::buttonPressed( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonPressed(QAbstractButton*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBUTTONGROUP");
    PHB_ITEM pbutton = Qt5xHb::Signals_return_qobject(button, "QABSTRACTBUTTON");

    hb_vmEvalBlockV(cb, 2, psender, pbutton);

    hb_itemRelease(psender);
    hb_itemRelease( pbutton );
  }
}

void QButtonGroupSlots::buttonPressed( int id )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonPressed(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBUTTONGROUP");
    PHB_ITEM pid = hb_itemPutNI( NULL, id );

    hb_vmEvalBlockV(cb, 2, psender, pid);

    hb_itemRelease(psender);
    hb_itemRelease( pid );
  }
}

void QButtonGroupSlots::buttonReleased( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonReleased(QAbstractButton*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBUTTONGROUP");
    PHB_ITEM pbutton = Qt5xHb::Signals_return_qobject(button, "QABSTRACTBUTTON");

    hb_vmEvalBlockV(cb, 2, psender, pbutton);

    hb_itemRelease(psender);
    hb_itemRelease( pbutton );
  }
}

void QButtonGroupSlots::buttonReleased( int id )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonReleased(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBUTTONGROUP");
    PHB_ITEM pid = hb_itemPutNI( NULL, id );

    hb_vmEvalBlockV(cb, 2, psender, pid);

    hb_itemRelease(psender);
    hb_itemRelease( pid );
  }
}

void QButtonGroupSlots_connect_signal(const QString & signal, const QString & slot)
{
  QButtonGroup * obj = (QButtonGroup *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QButtonGroupSlots * s = QCoreApplication::instance()->findChild<QButtonGroupSlots*>();

    if( s == NULL )
    {
      s = new QButtonGroupSlots();
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
