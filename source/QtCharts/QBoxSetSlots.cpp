/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBoxSetSlots.h"

QBoxSetSlots::QBoxSetSlots( QObject *parent ) : QObject( parent )
{
}

QBoxSetSlots::~QBoxSetSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "brushChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::cleared()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "cleared()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::clicked()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "clicked()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::doubleClicked()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "doubleClicked()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::hovered( bool status )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "hovered(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );

    hb_vmEvalBlockV(cb, 2, psender, pstatus);

    hb_itemRelease(psender);
    hb_itemRelease(pstatus);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::penChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "penChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::pressed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pressed()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::released()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "released()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::valueChanged( int index )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "valueChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxSetSlots::valuesChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "valuesChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBOXSET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

void QBoxSetSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QBoxSetSlots * s = QCoreApplication::instance()->findChild<QBoxSetSlots*>();

    if( s == NULL )
    {
      s = new QBoxSetSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
