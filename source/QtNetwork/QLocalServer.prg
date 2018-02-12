/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

   METHOD close
   METHOD errorString
   METHOD fullServerName
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD removeServer
   METHOD serverError
   METHOD serverName
   METHOD setMaxPendingConnections
   METHOD setSocketOptions
   METHOD socketDescriptor
   METHOD socketOptions
   METHOD waitForNewConnection

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLocalServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLocalServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLocalServer>
#endif

#include <QLocalSocket>

/*
explicit QLocalServer(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QLOCALSERVER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QLocalServer * o = new QLocalServer ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QLocalServer()
*/
HB_FUNC_STATIC( QLOCALSERVER_DELETE )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SocketOptions socketOptions() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SOCKETOPTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->socketOptions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSocketOptions(SocketOptions options)
*/
HB_FUNC_STATIC( QLOCALSERVER_SETSOCKETOPTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSocketOptions ( (QLocalServer::SocketOptions) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void close()
*/
HB_FUNC_STATIC( QLOCALSERVER_CLOSE )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->close ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QLOCALSERVER_ERRORSTRING )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool hasPendingConnections() const
*/
HB_FUNC_STATIC( QLOCALSERVER_HASPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasPendingConnections () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isListening() const
*/
HB_FUNC_STATIC( QLOCALSERVER_ISLISTENING )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isListening () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool listen(const QString &name)
*/
void QLocalServer_listen1 ()
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->listen ( PQSTRING(1) ) );
  }
}

/*
bool listen(qintptr socketDescriptor)
*/
void QLocalServer_listen2 ()
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->listen ( PQINTPTR(1) ) );
  }
}

//[1]bool listen(const QString &name)
//[2]bool listen(qintptr socketDescriptor)

HB_FUNC_STATIC( QLOCALSERVER_LISTEN )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLocalServer_listen1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLocalServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int maxPendingConnections() const
*/
HB_FUNC_STATIC( QLOCALSERVER_MAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maxPendingConnections () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QLocalSocket *nextPendingConnection()
*/
HB_FUNC_STATIC( QLOCALSERVER_NEXTPENDINGCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLocalSocket * ptr = obj->nextPendingConnection ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QLOCALSOCKET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString serverName() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERNAME )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->serverName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString fullServerName() const
*/
HB_FUNC_STATIC( QLOCALSERVER_FULLSERVERNAME )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->fullServerName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static bool removeServer(const QString &name)
*/
HB_FUNC_STATIC( QLOCALSERVER_REMOVESERVER )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RBOOL( QLocalServer::removeServer ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractSocket::SocketError serverError() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERERROR )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->serverError () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaxPendingConnections(int numConnections)
*/
HB_FUNC_STATIC( QLOCALSERVER_SETMAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaxPendingConnections ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool waitForNewConnection(int msec = 0, bool *timedOut = Q_NULLPTR)
*/
HB_FUNC_STATIC( QLOCALSERVER_WAITFORNEWCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTLOG(2) )
    {
      bool par2;
      RBOOL( obj->waitForNewConnection ( OPINT(1,0), &par2 ) );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qintptr socketDescriptor() const
*/
HB_FUNC_STATIC( QLOCALSERVER_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINTPTR( obj->socketDescriptor () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual void incomingConnection(quintptr socketDescriptor) (protected)
*/

#pragma ENDDUMP
