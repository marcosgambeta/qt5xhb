/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "Q3DObjectSlots.hpp"

Q3DObjectSlots::Q3DObjectSlots( QObject *parent ) : QObject( parent )
{
}

Q3DObjectSlots::~Q3DObjectSlots()
{
}

void Q3DObjectSlots::positionChanged( const QVector3D & position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "positionChanged(QVector3D)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DOBJECT");
    PHB_ITEM pposition = Qt5xHb::Signals_return_object( (void *) &position, "QVECTOR3D");

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease( pposition );
  }
}

void Q3DObjectSlots_connect_signal(const QString & signal, const QString & slot)
{
  Q3DObject * obj = (Q3DObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Q3DObjectSlots * s = QCoreApplication::instance()->findChild<Q3DObjectSlots*>();

    if( s == NULL )
    {
      s = new Q3DObjectSlots();
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
