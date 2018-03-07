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
REQUEST QWIZARDPAGE
REQUEST QVARIANT
REQUEST QPIXMAP
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QWizard INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addPage
   METHOD button
   METHOD setButton
   METHOD buttonText
   METHOD setButtonText
   METHOD currentId
   METHOD currentPage
   METHOD field
   METHOD hasVisitedPage
   METHOD nextId
   METHOD options
   METHOD setOptions
   METHOD page
   METHOD pageIds
   METHOD pixmap
   METHOD removePage
   METHOD setButtonLayout
   METHOD setDefaultProperty
   METHOD setField
   METHOD setOption
   METHOD setPage
   METHOD setPixmap
   METHOD setSideWidget
   METHOD sideWidget
   METHOD startId
   METHOD setStartId
   METHOD subTitleFormat
   METHOD setSubTitleFormat
   METHOD testOption
   METHOD titleFormat
   METHOD setTitleFormat
   METHOD validateCurrentPage
   METHOD visitedPages
   METHOD wizardStyle
   METHOD setWizardStyle
   METHOD setVisible
   METHOD sizeHint
   METHOD back
   METHOD next
   METHOD restart

   METHOD onCurrentIdChanged
   METHOD onCustomButtonClicked
   METHOD onHelpRequested
   METHOD onPageAdded
   METHOD onPageRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWizard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWizard>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWizard>
#endif

#include <QVariant>
#include <QAbstractButton>

/*
explicit QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QWIZARD_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QWizard * o = new QWizard ( OPQWIDGET(1,0), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWIZARD_DELETE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

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
int addPage ( QWizardPage * page )
*/
HB_FUNC_STATIC( QWIZARD_ADDPAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIZARDPAGE(1) )
    {
      RINT( obj->addPage ( PQWIZARDPAGE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractButton * button ( WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARD_BUTTON )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAbstractButton * ptr = obj->button ( (QWizard::WizardButton) hb_parni(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QABSTRACTBUTTON" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setButton ( WizardButton which, QAbstractButton * button )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTON )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQABSTRACTBUTTON(2) )
    {
      obj->setButton ( (QWizard::WizardButton) hb_parni(1), PQABSTRACTBUTTON(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString buttonText ( WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARD_BUTTONTEXT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->buttonText ( (QWizard::WizardButton) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setButtonText ( WizardButton which, const QString & text )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTONTEXT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
      obj->setButtonText ( (QWizard::WizardButton) hb_parni(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int currentId () const
*/
HB_FUNC_STATIC( QWIZARD_CURRENTID )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->currentId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWizardPage * currentPage () const
*/
HB_FUNC_STATIC( QWIZARD_CURRENTPAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWizardPage * ptr = obj->currentPage ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIZARDPAGE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant field ( const QString & name ) const
*/
HB_FUNC_STATIC( QWIZARD_FIELD )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QVariant * ptr = new QVariant( obj->field ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasVisitedPage ( int id ) const
*/
HB_FUNC_STATIC( QWIZARD_HASVISITEDPAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->hasVisitedPage ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int nextId () const
*/
HB_FUNC_STATIC( QWIZARD_NEXTID )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->nextId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
WizardOptions options () const
*/
HB_FUNC_STATIC( QWIZARD_OPTIONS )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->options () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOptions ( WizardOptions options )
*/
HB_FUNC_STATIC( QWIZARD_SETOPTIONS )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOptions ( (QWizard::WizardOptions) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWizardPage * page ( int id ) const
*/
HB_FUNC_STATIC( QWIZARD_PAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QWizardPage * ptr = obj->page ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIZARDPAGE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> pageIds () const
*/
HB_FUNC_STATIC( QWIZARD_PAGEIDS )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->pageIds ();
      _qt5xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap pixmap ( WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARD_PIXMAP )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QPixmap * ptr = new QPixmap( obj->pixmap ( (QWizard::WizardPixmap) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removePage ( int id )
*/
HB_FUNC_STATIC( QWIZARD_REMOVEPAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->removePage ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setButtonLayout ( const QList<WizardButton> & layout )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTONLAYOUT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      QList<QWizard::WizardButton> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << (QWizard::WizardButton) hb_arrayGetNI(aList1, i1+1);
}
      obj->setButtonLayout ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultProperty ( const char * className, const char * property, const char * changedSignal )
*/
HB_FUNC_STATIC( QWIZARD_SETDEFAULTPROPERTY )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
    {
      obj->setDefaultProperty ( PCONSTCHAR(1), PCONSTCHAR(2), PCONSTCHAR(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setField ( const QString & name, const QVariant & value )
*/
HB_FUNC_STATIC( QWIZARD_SETFIELD )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
    {
      obj->setField ( PQSTRING(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption ( WizardOption option, bool on = true )
*/
HB_FUNC_STATIC( QWIZARD_SETOPTION )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setOption ( (QWizard::WizardOption) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPage ( int id, QWizardPage * page )
*/
HB_FUNC_STATIC( QWIZARD_SETPAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQWIZARDPAGE(2) )
    {
      obj->setPage ( PINT(1), PQWIZARDPAGE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QWIZARD_SETPIXMAP )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
    {
      obj->setPixmap ( (QWizard::WizardPixmap) hb_parni(1), *PQPIXMAP(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSideWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QWIZARD_SETSIDEWIDGET )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setSideWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * sideWidget () const
*/
HB_FUNC_STATIC( QWIZARD_SIDEWIDGET )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->sideWidget ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int startId () const
*/
HB_FUNC_STATIC( QWIZARD_STARTID )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->startId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setStartId ( int id )
*/
HB_FUNC_STATIC( QWIZARD_SETSTARTID )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setStartId ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::TextFormat subTitleFormat () const
*/
HB_FUNC_STATIC( QWIZARD_SUBTITLEFORMAT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->subTitleFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSubTitleFormat(Qt::TextFormat format);
*/
HB_FUNC_STATIC( QWIZARD_SETSUBTITLEFORMAT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSubTitleFormat ( (Qt::TextFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption ( WizardOption option ) const
*/
HB_FUNC_STATIC( QWIZARD_TESTOPTION )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->testOption ( (QWizard::WizardOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::TextFormat titleFormat () const
*/
HB_FUNC_STATIC( QWIZARD_TITLEFORMAT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->titleFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTitleFormat ( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QWIZARD_SETTITLEFORMAT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTitleFormat ( (Qt::TextFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool validateCurrentPage ()
*/
HB_FUNC_STATIC( QWIZARD_VALIDATECURRENTPAGE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->validateCurrentPage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> visitedPages () const
*/
HB_FUNC_STATIC( QWIZARD_VISITEDPAGES )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->visitedPages ();
      _qt5xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
WizardStyle wizardStyle () const
*/
HB_FUNC_STATIC( QWIZARD_WIZARDSTYLE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->wizardStyle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setWizardStyle ( WizardStyle style )
*/
HB_FUNC_STATIC( QWIZARD_SETWIZARDSTYLE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWizardStyle ( (QWizard::WizardStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QWIZARD_SETVISIBLE )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QWIZARD_SIZEHINT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void back ()
*/
HB_FUNC_STATIC( QWIZARD_BACK )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->back ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void next ()
*/
HB_FUNC_STATIC( QWIZARD_NEXT )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->next ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void restart ()
*/
HB_FUNC_STATIC( QWIZARD_RESTART )
{
  QWizard * obj = (QWizard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->restart ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QWizardSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWIZARD_ONCURRENTIDCHANGED )
{
  QWizardSlots_connect_signal( "currentIdChanged(int)", "currentIdChanged(int)" );
}

HB_FUNC_STATIC( QWIZARD_ONCUSTOMBUTTONCLICKED )
{
  QWizardSlots_connect_signal( "customButtonClicked(int)", "customButtonClicked(int)" );
}

HB_FUNC_STATIC( QWIZARD_ONHELPREQUESTED )
{
  QWizardSlots_connect_signal( "helpRequested()", "helpRequested()" );
}

HB_FUNC_STATIC( QWIZARD_ONPAGEADDED )
{
  QWizardSlots_connect_signal( "pageAdded(int)", "pageAdded(int)" );
}

HB_FUNC_STATIC( QWIZARD_ONPAGEREMOVED )
{
  QWizardSlots_connect_signal( "pageRemoved(int)", "pageRemoved(int)" );
}


#pragma ENDDUMP
