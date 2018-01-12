/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
#endif

CLASS QButtonGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId

   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QButtonGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QButtonGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QButtonGroup>
#endif

/*
QButtonGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QBUTTONGROUP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QButtonGroup * o = new QButtonGroup ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBUTTONGROUP_DELETE )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

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
void addButton ( QAbstractButton * button )
*/
void QButtonGroup_addButton1 ()
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->addButton ( PQABSTRACTBUTTON(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addButton ( QAbstractButton * button, int id )
*/
void QButtonGroup_addButton2 ()
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->addButton ( PQABSTRACTBUTTON(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QButtonGroup_addButton1 ();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QButtonGroup_addButton2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button ( int id ) const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAbstractButton * ptr = obj->button ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTBUTTON" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTONS )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QAbstractButton *> list = obj->buttons ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractButton * checkedButton () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_CHECKEDBUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractButton * ptr = obj->checkedButton ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTBUTTON" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int checkedId () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_CHECKEDID )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->checkedId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool exclusive () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_EXCLUSIVE )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->exclusive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int id ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QBUTTONGROUP_ID )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
      RINT( obj->id ( PQABSTRACTBUTTON(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QBUTTONGROUP_REMOVEBUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
      obj->removeButton ( PQABSTRACTBUTTON(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExclusive ( bool )
*/
HB_FUNC_STATIC( QBUTTONGROUP_SETEXCLUSIVE )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setExclusive ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setId ( QAbstractButton * button, int id )
*/
HB_FUNC_STATIC( QBUTTONGROUP_SETID )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
    {
      obj->setId ( PQABSTRACTBUTTON(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
