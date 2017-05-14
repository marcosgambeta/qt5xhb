/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressDialog INHERIT QDialog

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoClose
   METHOD setAutoClose
   METHOD autoReset
   METHOD setAutoReset
   METHOD labelText
   METHOD setLabelText
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD minimumDuration
   METHOD setMinimumDuration
   METHOD open
   METHOD setBar
   METHOD setCancelButton
   METHOD setLabel
   METHOD value
   METHOD setValue
   METHOD wasCanceled
   METHOD sizeHint
   METHOD cancel
   METHOD reset
   METHOD setCancelButtonText
   METHOD setRange

   METHOD onCanceled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProgressDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QProgressDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QProgressDialog>
#endif

/*
explicit QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QProgressDialog_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QProgressDialog * o = new QProgressDialog ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QProgressDialog_new2 ()
{
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  QWidget * par5 = ISNIL(5)? 0 : (QWidget *) _qt5xhb_itemGetPtr(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  QProgressDialog * o = new QProgressDialog ( PQSTRING(1), PQSTRING(2), par3, par4, par5,  (Qt::WindowFlags) par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QPROGRESSDIALOG_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QProgressDialog_new1();
  }
  else if( ISBETWEEN(4,6) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) && ISOPTQWIDGET(5) && ISOPTNUM(6) )
  {
    QProgressDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPROGRESSDIALOG_DELETE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool autoClose () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_AUTOCLOSE )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoClose (  ) );
  }
}

/*
void setAutoClose ( bool close )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETAUTOCLOSE )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoClose ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoReset () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_AUTORESET )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoReset (  ) );
  }
}

/*
void setAutoReset ( bool reset )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETAUTORESET )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoReset ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString labelText () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_LABELTEXT )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->labelText (  ).toLatin1().data() );
  }
}

/*
void setLabelText ( const QString & text )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETLABELTEXT )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setLabelText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maximum () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_MAXIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
}

/*
void setMaximum ( int maximum )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETMAXIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaximum ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int minimum () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_MINIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
}

/*
void setMinimum ( int minimum )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETMINIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMinimum ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int minimumDuration () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_MINIMUMDURATION )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->minimumDuration (  ) );
  }
}

/*
void setMinimumDuration ( int ms )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETMINIMUMDURATION )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMinimumDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_OPEN )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
      const char * par2 = hb_parc(2);
      obj->open ( par1,  (const char *) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBar ( QProgressBar * bar )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETBAR )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPROGRESSBAR(1) )
    {
      QProgressBar * par1 = (QProgressBar *) _qt5xhb_itemGetPtr(1);
      obj->setBar ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCancelButton ( QPushButton * cancelButton )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETCANCELBUTTON )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPUSHBUTTON(1) )
    {
      QPushButton * par1 = (QPushButton *) _qt5xhb_itemGetPtr(1);
      obj->setCancelButton ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLabel ( QLabel * label )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETLABEL )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQLABEL(1) )
    {
      QLabel * par1 = (QLabel *) _qt5xhb_itemGetPtr(1);
      obj->setLabel ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int value () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_VALUE )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}

/*
void setValue ( int progress )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETVALUE )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setValue ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool wasCanceled () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_WASCANCELED )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->wasCanceled (  ) );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SIZEHINT )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void cancel ()
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_CANCEL )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cancel (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reset ()
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_RESET )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->reset (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCancelButtonText ( const QString & text )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETCANCELBUTTONTEXT )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setCancelButtonText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( int minimum, int maximum )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETRANGE )
{
  QProgressDialog * obj = (QProgressDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setRange ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
