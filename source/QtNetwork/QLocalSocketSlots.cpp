//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QLocalSocketSlots.hpp"

QLocalSocketSlots::QLocalSocketSlots(QObject *parent) : QObject(parent)
{
}

QLocalSocketSlots::~QLocalSocketSlots()
{
}

void QLocalSocketSlots::connected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "connected()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOCALSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QLocalSocketSlots::disconnected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "disconnected()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOCALSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QLocalSocketSlots::error(QLocalSocket::LocalSocketError socketError)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QLocalSocket::LocalSocketError)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOCALSOCKET");
    PHB_ITEM psocketError = hb_itemPutNI(NULL, static_cast<int>(socketError));

    hb_vmEvalBlockV(cb, 2, psender, psocketError);

    hb_itemRelease(psender);
    hb_itemRelease(psocketError);
  }
}

void QLocalSocketSlots::stateChanged(QLocalSocket::LocalSocketState socketState)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QLocalSocket::LocalSocketState)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLOCALSOCKET");
    PHB_ITEM psocketState = hb_itemPutNI(NULL, static_cast<int>(socketState));

    hb_vmEvalBlockV(cb, 2, psender, psocketState);

    hb_itemRelease(psender);
    hb_itemRelease(psocketState);
  }
}

void QLocalSocketSlots_connect_signal(const QString &signal, const QString &slot)
{
  QLocalSocket *obj = (QLocalSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QLocalSocketSlots *s = QCoreApplication::instance()->findChild<QLocalSocketSlots *>();

    if (s == NULL)
    {
      s = new QLocalSocketSlots();
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
