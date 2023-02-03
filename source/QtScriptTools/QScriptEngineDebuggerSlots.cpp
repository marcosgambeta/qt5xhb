/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScriptEngineDebuggerSlots.hpp"

QScriptEngineDebuggerSlots::QScriptEngineDebuggerSlots( QObject *parent ) : QObject( parent )
{
}

QScriptEngineDebuggerSlots::~QScriptEngineDebuggerSlots()
{
}

void QScriptEngineDebuggerSlots::evaluationResumed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "evaluationResumed()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSCRIPTENGINEDEBUGGER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QScriptEngineDebuggerSlots::evaluationSuspended()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "evaluationSuspended()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSCRIPTENGINEDEBUGGER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QScriptEngineDebuggerSlots_connect_signal(const QString & signal, const QString & slot)
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QScriptEngineDebuggerSlots * s = QCoreApplication::instance()->findChild<QScriptEngineDebuggerSlots*>();

    if( s == NULL )
    {
      s = new QScriptEngineDebuggerSlots();
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
