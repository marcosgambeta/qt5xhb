/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCategoryAxisSlots.h"

QCategoryAxisSlots::QCategoryAxisSlots(QObject *parent) : QObject(parent)
{
}

QCategoryAxisSlots::~QCategoryAxisSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QCategoryAxisSlots::categoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoriesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCATEGORYAXIS" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QCategoryAxisSlots::labelsPositionChanged( QCategoryAxis::AxisLabelsPosition position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCATEGORYAXIS" );
    PHB_ITEM pposition = hb_itemPutNI( NULL, (int) position );
    hb_vmEvalBlockV( cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}
#endif

void QCategoryAxisSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCategoryAxis * obj = (QCategoryAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCategoryAxisSlots * s = QCoreApplication::instance()->findChild<QCategoryAxisSlots *>();

    if( s == NULL )
    {
      s = new QCategoryAxisSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
