/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraExposureSlots.h"


static SlotsQCameraExposure * s = NULL;

SlotsQCameraExposure::SlotsQCameraExposure(QObject *parent) : QObject(parent)
{
}

SlotsQCameraExposure::~SlotsQCameraExposure()
{
}

void SlotsQCameraExposure::apertureChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "apertureChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraExposure::apertureRangeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "apertureRangeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQCameraExposure::exposureCompensationChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exposureCompensationChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraExposure::flashReady(bool ready)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flashReady(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pready = hb_itemPutL( NULL, ready );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pready );
    hb_itemRelease( psender );
    hb_itemRelease( pready );
  }
}

void SlotsQCameraExposure::isoSensitivityChanged(int value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "isoSensitivityChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraExposure::shutterSpeedChanged(qreal speed)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shutterSpeedChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pspeed = hb_itemPutND( NULL, speed );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pspeed );
    hb_itemRelease( psender );
    hb_itemRelease( pspeed );
  }
}

void SlotsQCameraExposure::shutterSpeedRangeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shutterSpeedRangeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCAMERAEXPOSURE_ONAPERTURECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "apertureChanged(qreal)", "apertureChanged(qreal)" ) );
}

HB_FUNC( QCAMERAEXPOSURE_ONAPERTURERANGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "apertureRangeChanged()", "apertureRangeChanged()" ) );
}

HB_FUNC( QCAMERAEXPOSURE_ONEXPOSURECOMPENSATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "exposureCompensationChanged(qreal)", "exposureCompensationChanged(qreal)" ) );
}

HB_FUNC( QCAMERAEXPOSURE_ONFLASHREADY )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "flashReady(bool)", "flashReady(bool)" ) );
}

HB_FUNC( QCAMERAEXPOSURE_ONISOSENSITIVITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "isoSensitivityChanged(int)", "isoSensitivityChanged(int)" ) );
}

HB_FUNC( QCAMERAEXPOSURE_ONSHUTTERSPEEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "shutterSpeedChanged(qreal)", "shutterSpeedChanged(qreal)" ) );
}

HB_FUNC( QCAMERAEXPOSURE_ONSHUTTERSPEEDRANGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposure(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "shutterSpeedRangeChanged()", "shutterSpeedRangeChanged()" ) );
}
