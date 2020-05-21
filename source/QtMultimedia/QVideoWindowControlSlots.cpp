/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVideoWindowControlSlots.h"

QVideoWindowControlSlots::QVideoWindowControlSlots( QObject *parent ) : QObject( parent )
{
}

QVideoWindowControlSlots::~QVideoWindowControlSlots()
{
}

void QVideoWindowControlSlots::fullScreenChanged( bool fullScreen )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "fullScreenChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIDEOWINDOWCONTROL" );
    PHB_ITEM pfullScreen = hb_itemPutL( NULL, fullScreen );

    hb_vmEvalBlockV( cb, 2, psender, pfullScreen );

    hb_itemRelease( psender );
    hb_itemRelease( pfullScreen );
  }
}

void QVideoWindowControlSlots::brightnessChanged( int brightness )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "brightnessChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIDEOWINDOWCONTROL" );
    PHB_ITEM pbrightness = hb_itemPutNI( NULL, brightness );

    hb_vmEvalBlockV( cb, 2, psender, pbrightness );

    hb_itemRelease( psender );
    hb_itemRelease( pbrightness );
  }
}

void QVideoWindowControlSlots::contrastChanged( int contrast )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "contrastChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIDEOWINDOWCONTROL" );
    PHB_ITEM pcontrast = hb_itemPutNI( NULL, contrast );

    hb_vmEvalBlockV( cb, 2, psender, pcontrast );

    hb_itemRelease( psender );
    hb_itemRelease( pcontrast );
  }
}

void QVideoWindowControlSlots::hueChanged( int hue )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "hueChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIDEOWINDOWCONTROL" );
    PHB_ITEM phue = hb_itemPutNI( NULL, hue );

    hb_vmEvalBlockV( cb, 2, psender, phue );

    hb_itemRelease( psender );
    hb_itemRelease( phue );
  }
}

void QVideoWindowControlSlots::saturationChanged( int saturation )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "saturationChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIDEOWINDOWCONTROL" );
    PHB_ITEM psaturation = hb_itemPutNI( NULL, saturation );

    hb_vmEvalBlockV( cb, 2, psender, psaturation );

    hb_itemRelease( psender );
    hb_itemRelease( psaturation );
  }
}

void QVideoWindowControlSlots::nativeSizeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "nativeSizeChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIDEOWINDOWCONTROL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QVideoWindowControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVideoWindowControlSlots * s = QCoreApplication::instance()->findChild<QVideoWindowControlSlots *>();

    if( s == NULL )
    {
      s = new QVideoWindowControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
