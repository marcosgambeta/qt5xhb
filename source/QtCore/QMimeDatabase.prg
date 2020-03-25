/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMETYPE
#endif

CLASS QMimeDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mimeTypeForName
   METHOD mimeTypeForFile
   METHOD mimeTypesForFileName
   METHOD mimeTypeForData
   METHOD mimeTypeForUrl
   METHOD mimeTypeForFileNameAndData
   METHOD suffixForFileName
   METHOD allMimeTypes

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMimeDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QMimeDatabase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QMimeDatabase>
#endif

/*
QMimeDatabase()
*/
HB_FUNC_STATIC( QMIMEDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMimeDatabase * o = new QMimeDatabase();
    _qt5xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_DELETE )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

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
QMimeType mimeTypeForName(const QString &nameOrAlias) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORNAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QMimeType * ptr = new QMimeType( obj->mimeTypeForName( PQSTRING(1) ) );
      _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
*/
void QMimeDatabase_mimeTypeForFile1()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile( PQSTRING(1), ISNIL(2)? (QMimeDatabase::MatchMode) QMimeDatabase::MatchDefault : (QMimeDatabase::MatchMode) hb_parni(2) ) );
    _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const
*/
void QMimeDatabase_mimeTypeForFile2()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile( *PQFILEINFO(1), ISNIL(2)? (QMimeDatabase::MatchMode) QMimeDatabase::MatchDefault : (QMimeDatabase::MatchMode) hb_parni(2) ) );
    _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
  }
}

//[1]QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
//[2]QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QMimeDatabase_mimeTypeForFile1();
  }
  else if( ISBETWEEN(1,2) && ISQFILEINFO(1) && ISOPTNUM(2) )
  {
    QMimeDatabase_mimeTypeForFile2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QMimeType> mimeTypesForFileName(const QString &fileName) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPESFORFILENAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QList<QMimeType> list = obj->mimeTypesForFileName( PQSTRING(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMIMETYPE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QMimeType *) new QMimeType( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMIMETYPE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMimeType mimeTypeForData(const QByteArray &data) const
*/
void QMimeDatabase_mimeTypeForData1()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData( *PQBYTEARRAY(1) ) );
    _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForData(QIODevice *device) const
*/
void QMimeDatabase_mimeTypeForData2()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData( PQIODEVICE(1) ) );
    _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
  }
}

//[1]QMimeType mimeTypeForData(const QByteArray &data) const
//[2]QMimeType mimeTypeForData(QIODevice *device) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QMimeDatabase_mimeTypeForData1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QMimeDatabase_mimeTypeForData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMimeType mimeTypeForUrl(const QUrl &url) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORURL )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QMimeType * ptr = new QMimeType( obj->mimeTypeForUrl( *PQURL(1) ) );
      _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
*/
void QMimeDatabase_mimeTypeForFileNameAndData1()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData( PQSTRING(1), PQIODEVICE(2) ) );
    _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const
*/
void QMimeDatabase_mimeTypeForFileNameAndData2()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData( PQSTRING(1), *PQBYTEARRAY(2) ) );
    _qt5xhb_createReturnClass( ptr, "QMIMETYPE", true );
  }
}

//[1]QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
//[2]QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    QMimeDatabase_mimeTypeForFileNameAndData1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    QMimeDatabase_mimeTypeForFileNameAndData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString suffixForFileName(const QString &fileName) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_SUFFIXFORFILENAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRING( obj->suffixForFileName( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QMimeType> allMimeTypes() const
*/
HB_FUNC_STATIC( QMIMEDATABASE_ALLMIMETYPES )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QMimeType> list = obj->allMimeTypes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMIMETYPE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QMimeType *) new QMimeType( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMIMETYPE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMIMEDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMIMEDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QMIMEDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMIMEDATABASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
