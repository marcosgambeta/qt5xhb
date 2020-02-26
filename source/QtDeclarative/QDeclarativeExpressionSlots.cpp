/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeExpressionSlots.h"

QDeclarativeExpressionSlots::QDeclarativeExpressionSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativeExpressionSlots::~QDeclarativeExpressionSlots()
{
}
void QDeclarativeExpressionSlots::valueChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDECLARATIVEEXPRESSION" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QDeclarativeExpressionSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QDeclarativeExpressionSlots * s = QCoreApplication::instance()->findChild<QDeclarativeExpressionSlots *>();

    if( s == NULL )
    {
      s = new QDeclarativeExpressionSlots();
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
