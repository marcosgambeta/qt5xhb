/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QObjectSlots.hpp"

QObjectSlots::QObjectSlots( QObject *parent ) : QObject( parent )
{
}

QObjectSlots::~QObjectSlots()
{
}

void QObjectSlots::destroyed( QObject * obj )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "destroyed(QObject*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QOBJECT");
    PHB_ITEM pobj = Qt5xHb::Signals_return_qobject(obj, "QOBJECT");

    hb_vmEvalBlockV(cb, 2, psender, pobj);

    hb_itemRelease(psender);
    hb_itemRelease( pobj );
    Qt5xHb::Signals_disconnect_signal( object, "destroyed(QObject*)");
  }
}

void QObjectSlots::objectNameChanged( const QString & objectName )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "objectNameChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QOBJECT");
    PHB_ITEM pobjectName = hb_itemPutC( NULL, QSTRINGTOSTRING(objectName) );

    hb_vmEvalBlockV(cb, 2, psender, pobjectName);

    hb_itemRelease(psender);
    hb_itemRelease( pobjectName );
  }
}

void QObjectSlots_connect_signal(const QString & signal, const QString & slot)
{
  QObject * obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QObjectSlots * s = QCoreApplication::instance()->findChild<QObjectSlots*>();

    if( s == NULL )
    {
      s = new QObjectSlots();
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
