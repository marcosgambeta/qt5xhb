/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBarDataProxySlots.hpp"

QBarDataProxySlots::QBarDataProxySlots(QObject *parent) : QObject(parent)
{
}

QBarDataProxySlots::~QBarDataProxySlots()
{
}

void QBarDataProxySlots::arrayReset()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "arrayReset()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QBarDataProxySlots::columnLabelsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "columnLabelsChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QBarDataProxySlots::itemChanged(int rowIndex, int columnIndex)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "itemChanged(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM prowIndex = hb_itemPutNI(NULL, rowIndex);
    PHB_ITEM pcolumnIndex = hb_itemPutNI(NULL, columnIndex);

    hb_vmEvalBlockV(cb, 3, psender, prowIndex, pcolumnIndex);

    hb_itemRelease(psender);
    hb_itemRelease(prowIndex);
    hb_itemRelease(pcolumnIndex);
  }
}

void QBarDataProxySlots::rowCountChanged(int count)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rowCountChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM pcount = hb_itemPutNI(NULL, count);

    hb_vmEvalBlockV(cb, 2, psender, pcount);

    hb_itemRelease(psender);
    hb_itemRelease(pcount);
  }
}

void QBarDataProxySlots::rowLabelsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rowLabelsChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QBarDataProxySlots::rowsAdded(int startIndex, int count)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rowsAdded(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI(NULL, startIndex);
    PHB_ITEM pcount = hb_itemPutNI(NULL, count);

    hb_vmEvalBlockV(cb, 3, psender, pstartIndex, pcount);

    hb_itemRelease(psender);
    hb_itemRelease(pstartIndex);
    hb_itemRelease(pcount);
  }
}

void QBarDataProxySlots::rowsChanged(int startIndex, int count)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rowsChanged(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI(NULL, startIndex);
    PHB_ITEM pcount = hb_itemPutNI(NULL, count);

    hb_vmEvalBlockV(cb, 3, psender, pstartIndex, pcount);

    hb_itemRelease(psender);
    hb_itemRelease(pstartIndex);
    hb_itemRelease(pcount);
  }
}

void QBarDataProxySlots::rowsInserted(int startIndex, int count)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rowsInserted(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI(NULL, startIndex);
    PHB_ITEM pcount = hb_itemPutNI(NULL, count);

    hb_vmEvalBlockV(cb, 3, psender, pstartIndex, pcount);

    hb_itemRelease(psender);
    hb_itemRelease(pstartIndex);
    hb_itemRelease(pcount);
  }
}

void QBarDataProxySlots::rowsRemoved(int startIndex, int count)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "rowsRemoved(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM pstartIndex = hb_itemPutNI(NULL, startIndex);
    PHB_ITEM pcount = hb_itemPutNI(NULL, count);

    hb_vmEvalBlockV(cb, 3, psender, pstartIndex, pcount);

    hb_itemRelease(psender);
    hb_itemRelease(pstartIndex);
    hb_itemRelease(pcount);
  }
}

void QBarDataProxySlots::seriesChanged(QBar3DSeries *series)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "seriesChanged(QBar3DSeries*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBARDATAPROXY");
    PHB_ITEM pseries = Qt5xHb::Signals_return_qobject(series, "QBAR3DSERIES");

    hb_vmEvalBlockV(cb, 2, psender, pseries);

    hb_itemRelease(psender);
    hb_itemRelease(pseries);
  }
}

void QBarDataProxySlots_connect_signal(const QString &signal, const QString &slot)
{
  QBarDataProxy *obj = (QBarDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QBarDataProxySlots *s = QCoreApplication::instance()->findChild<QBarDataProxySlots *>();

    if (s == NULL)
    {
      s = new QBarDataProxySlots();
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
