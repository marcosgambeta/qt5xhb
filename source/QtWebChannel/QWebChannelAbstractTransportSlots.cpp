/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebChannelAbstractTransportSlots.hpp"

QWebChannelAbstractTransportSlots::QWebChannelAbstractTransportSlots( QObject *parent ) : QObject( parent )
{
}

QWebChannelAbstractTransportSlots::~QWebChannelAbstractTransportSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebChannelAbstractTransportSlots::messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "messageReceived(QJsonObject,QWebChannelAbstractTransport*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBCHANNELABSTRACTTRANSPORT");
    PHB_ITEM pmessage = Qt5xHb::Signals_return_object( (void *) &message, "QJSONOBJECT");
    PHB_ITEM ptransport = Qt5xHb::Signals_return_qobject(transport, "QWEBCHANNELABSTRACTTRANSPORT");

    hb_vmEvalBlockV(cb, 3, psender, pmessage, ptransport);

    hb_itemRelease(psender);
    hb_itemRelease( pmessage );
    hb_itemRelease( ptransport );
  }
}
#endif

void QWebChannelAbstractTransportSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannelAbstractTransport * obj = (QWebChannelAbstractTransport *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QWebChannelAbstractTransportSlots * s = QCoreApplication::instance()->findChild<QWebChannelAbstractTransportSlots*>();

    if( s == NULL )
    {
      s = new QWebChannelAbstractTransportSlots();
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
