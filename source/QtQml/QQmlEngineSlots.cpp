/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QQmlEngineSlots.h"


static SlotsQQmlEngine * s = NULL;

SlotsQQmlEngine::SlotsQQmlEngine(QObject *parent) : QObject(parent)
{
}

SlotsQQmlEngine::~SlotsQQmlEngine()
{
}

void SlotsQQmlEngine::quit()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "quit()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QQMLENGINE_ONQUIT )
{
  if( s == NULL )
  {
    s = new SlotsQQmlEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "quit()", "quit()" ) );
}
