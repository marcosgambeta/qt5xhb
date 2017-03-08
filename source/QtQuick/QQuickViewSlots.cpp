/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QQuickViewSlots.h"


static SlotsQQuickView * s = NULL;

SlotsQQuickView::SlotsQQuickView(QObject *parent) : QObject(parent)
{
}

SlotsQQuickView::~SlotsQQuickView()
{
}

void SlotsQQuickView::statusChanged(QQuickView::Status status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QQuickView::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

HB_FUNC( QQUICKVIEW_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QQuickView::Status)", "statusChanged(QQuickView::Status)" ) );
}
