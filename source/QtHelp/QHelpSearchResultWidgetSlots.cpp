/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpSearchResultWidgetSlots.hpp"

QHelpSearchResultWidgetSlots::QHelpSearchResultWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QHelpSearchResultWidgetSlots::~QHelpSearchResultWidgetSlots()
{
}

void QHelpSearchResultWidgetSlots::requestShowLink( const QUrl & link )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "requestShowLink(QUrl)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHELPSEARCHRESULTWIDGET");
    PHB_ITEM plink = Qt5xHb::Signals_return_object( (void *) &link, "QURL");

    hb_vmEvalBlockV(cb, 2, psender, plink);

    hb_itemRelease(psender);
    hb_itemRelease( plink );
  }
}

void QHelpSearchResultWidgetSlots_connect_signal(const QString & signal, const QString & slot)
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QHelpSearchResultWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpSearchResultWidgetSlots*>();

    if( s == NULL )
    {
      s = new QHelpSearchResultWidgetSlots();
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
