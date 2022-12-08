/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCustom3DLabelSlots.h"

QCustom3DLabelSlots::QCustom3DLabelSlots( QObject *parent ) : QObject( parent )
{
}

QCustom3DLabelSlots::~QCustom3DLabelSlots()
{
}

void QCustom3DLabelSlots::backgroundColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "backgroundColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void QCustom3DLabelSlots::backgroundEnabledChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "backgroundEnabledChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QCustom3DLabelSlots::borderEnabledChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "borderEnabledChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QCustom3DLabelSlots::facingCameraChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "facingCameraChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QCustom3DLabelSlots::fontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "fontChanged(QFont)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM pfont = Qt5xHb::Signals_return_object( (void *) &font, "QFONT" );

    hb_vmEvalBlockV( cb, 2, psender, pfont );

    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}

void QCustom3DLabelSlots::textChanged( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "textChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );

    hb_vmEvalBlockV( cb, 2, psender, ptext );

    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void QCustom3DLabelSlots::textColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "textColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QCUSTOM3DLABEL" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void QCustom3DLabelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCustom3DLabelSlots * s = QCoreApplication::instance()->findChild<QCustom3DLabelSlots *>();

    if( s == NULL )
    {
      s = new QCustom3DLabelSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
