%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QBluetoothServiceDiscoveryAgentSlots.h"

static SlotsQBluetoothServiceDiscoveryAgent * s = NULL;

SlotsQBluetoothServiceDiscoveryAgent::SlotsQBluetoothServiceDiscoveryAgent(QObject *parent) : QObject(parent)
{
}

SlotsQBluetoothServiceDiscoveryAgent::~SlotsQBluetoothServiceDiscoveryAgent()
{
}

void SlotsQBluetoothServiceDiscoveryAgent::serviceDiscovered(const QBluetoothServiceInfo &info)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceDiscovered(QBluetoothServiceInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pinfo = hb_itemPutPtr( NULL, (QBluetoothServiceInfo *) &info );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pinfo );
    hb_itemRelease( psender );
    hb_itemRelease( pinfo );
  }
#endif
}

void SlotsQBluetoothServiceDiscoveryAgent::finished()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQBluetoothServiceDiscoveryAgent::canceled()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQBluetoothServiceDiscoveryAgent::error(QBluetoothServiceDiscoveryAgent::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothServiceDiscoveryAgent::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

HB_FUNC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONSERVICEDISCOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothServiceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceDiscovered(QBluetoothServiceInfo)", "serviceDiscovered(QBluetoothServiceInfo)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothServiceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothServiceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canceled()", "canceled()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothServiceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QBluetoothServiceDiscoveryAgent::Error)", "error(QBluetoothServiceDiscoveryAgent::Error)" ) );
#else
  hb_retl(false);
#endif
}