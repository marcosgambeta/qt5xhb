/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALSOCKET
#endif

CLASS QLocalServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD socketOptions
   METHOD setSocketOptions
   METHOD close
   METHOD errorString
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD serverName
   METHOD fullServerName
   METHOD removeServer
   METHOD serverError
   METHOD setMaxPendingConnections
   METHOD waitForNewConnection
   METHOD socketDescriptor

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLocalServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QLocalServer>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QLocalServer>
#endif

#include <QtNetwork/QLocalSocket>

/*
QLocalServer( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QLOCALSERVER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QLocalServer * obj = new QLocalServer( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QLocalServer()
*/
HB_FUNC_STATIC( QLOCALSERVER_DELETE )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QLocalServer::SocketOptions socketOptions() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SOCKETOPTIONS )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->socketOptions() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSocketOptions( QLocalServer::SocketOptions options )
*/
HB_FUNC_STATIC( QLOCALSERVER_SETSOCKETOPTIONS )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSocketOptions( (QLocalServer::SocketOptions) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void close()
*/
HB_FUNC_STATIC( QLOCALSERVER_CLOSE )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QLOCALSERVER_ERRORSTRING )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool hasPendingConnections() const
*/
HB_FUNC_STATIC( QLOCALSERVER_HASPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingConnections() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isListening() const
*/
HB_FUNC_STATIC( QLOCALSERVER_ISLISTENING )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isListening() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QLOCALSERVER_LISTEN )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool listen( const QString & name )
    */
    QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->listen( PQSTRING(1) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    bool listen( qintptr socketDescriptor )
    */
    QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->listen( PQINTPTR(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int maxPendingConnections() const
*/
HB_FUNC_STATIC( QLOCALSERVER_MAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxPendingConnections() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QLocalSocket * nextPendingConnection()
*/
HB_FUNC_STATIC( QLOCALSERVER_NEXTPENDINGCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocalSocket * ptr = obj->nextPendingConnection();
      Qt5xHb::createReturnQObjectClass(ptr, "QLOCALSOCKET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString serverName() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERNAME )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->serverName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString fullServerName() const
*/
HB_FUNC_STATIC( QLOCALSERVER_FULLSERVERNAME )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fullServerName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
static bool removeServer( const QString & name )
*/
HB_FUNC_STATIC( QLOCALSERVER_REMOVESERVER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QLocalServer::removeServer( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QAbstractSocket::SocketError serverError() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERERROR )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->serverError() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setMaxPendingConnections( int numConnections )
*/
HB_FUNC_STATIC( QLOCALSERVER_SETMAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMaxPendingConnections( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool waitForNewConnection( int msec = 0, bool * timedOut = nullptr )
*/
HB_FUNC_STATIC( QLOCALSERVER_WAITFORNEWCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (HB_ISNUM(1)||HB_ISNIL(1)) && (HB_ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      bool par2;
      RBOOL( obj->waitForNewConnection( OPINT(1,0), &par2 ) );
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qintptr socketDescriptor() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QLocalServer * obj = (QLocalServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINTPTR( obj->socketDescriptor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

void QLocalServerSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QLOCALSERVER_ONNEWCONNECTION )
{
  QLocalServerSlots_connect_signal("newConnection()", "newConnection()");
}

#pragma ENDDUMP
