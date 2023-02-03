/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBluetoothTransferReplySlots.hpp"

QBluetoothTransferReplySlots::QBluetoothTransferReplySlots( QObject *parent ) : QObject( parent )
{
}

QBluetoothTransferReplySlots::~QBluetoothTransferReplySlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothTransferReplySlots::finished( QBluetoothTransferReply * r )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished(QBluetoothTransferReply*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHTRANSFERREPLY");
    PHB_ITEM pr = Qt5xHb::Signals_return_qobject(r, "QBLUETOOTHTRANSFERREPLY");

    hb_vmEvalBlockV(cb, 2, psender, pr);

    hb_itemRelease(psender);
    hb_itemRelease(pr);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothTransferReplySlots::transferProgress( qint64 bytesTransferred, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "transferProgress(qint64,qint64)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QBLUETOOTHTRANSFERREPLY");
    PHB_ITEM pbytesTransferred = hb_itemPutNLL( NULL, bytesTransferred );
    PHB_ITEM pbytesTotal = hb_itemPutNLL( NULL, bytesTotal );

    hb_vmEvalBlockV(cb, 3, psender, pbytesTransferred, pbytesTotal);

    hb_itemRelease(psender);
    hb_itemRelease(pbytesTransferred);
    hb_itemRelease(pbytesTotal);
  }
}
#endif

void QBluetoothTransferReplySlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QBluetoothTransferReplySlots * s = QCoreApplication::instance()->findChild<QBluetoothTransferReplySlots*>();

    if( s == NULL )
    {
      s = new QBluetoothTransferReplySlots();
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
