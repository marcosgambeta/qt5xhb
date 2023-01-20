/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QApplicationSlots.h"

QApplicationSlots::QApplicationSlots( QObject *parent ) : QObject( parent )
{
}

QApplicationSlots::~QApplicationSlots()
{
}

void QApplicationSlots::aboutToReleaseGpuResources()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "aboutToReleaseGpuResources()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QApplicationSlots::aboutToUseGpuResources()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "aboutToUseGpuResources()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QApplicationSlots::commitDataRequest( QSessionManager & manager )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "commitDataRequest(QSessionManager)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");
    PHB_ITEM pmanager = Qt5xHb::Signals_return_qobject(&manager, "QSESSIONMANAGER");

    hb_vmEvalBlockV(cb, 2, psender, pmanager);

    hb_itemRelease(psender);
    hb_itemRelease( pmanager );
  }
}

void QApplicationSlots::focusChanged( QWidget * old, QWidget * now )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "focusChanged(QWidget*,QWidget*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");
    PHB_ITEM pold = Qt5xHb::Signals_return_qobject(old, "QWIDGET");
    PHB_ITEM pnow = Qt5xHb::Signals_return_qobject(now, "QWIDGET");

    hb_vmEvalBlockV(cb, 3, psender, pold, pnow);

    hb_itemRelease(psender);
    hb_itemRelease( pold );
    hb_itemRelease( pnow );
  }
}

void QApplicationSlots::fontDatabaseChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "fontDatabaseChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QApplicationSlots::lastWindowClosed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "lastWindowClosed()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QApplicationSlots::saveStateRequest( QSessionManager & manager )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "saveStateRequest(QSessionManager)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAPPLICATION");
    PHB_ITEM pmanager = Qt5xHb::Signals_return_qobject(&manager, "QSESSIONMANAGER");

    hb_vmEvalBlockV(cb, 2, psender, pmanager);

    hb_itemRelease(psender);
    hb_itemRelease( pmanager );
  }
}

void QApplicationSlots_connect_signal(const QString & signal, const QString & slot)
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QApplicationSlots * s = QCoreApplication::instance()->findChild<QApplicationSlots*>();

    if( s == NULL )
    {
      s = new QApplicationSlots();
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
