/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLINE
REQUEST QLINEF
REQUEST QMATRIX
REQUEST QPAINTERPATH
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QPOLYGON
REQUEST QPOLYGONF
REQUEST QRECT
REQUEST QRECTF
REQUEST QREGION
#endif

CLASS QTransform

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isAffine
   METHOD isIdentity
   METHOD isInvertible
   METHOD isScaling
   METHOD isRotating
   METHOD isTranslating
   METHOD type
   METHOD determinant
   METHOD det
   METHOD m11
   METHOD m12
   METHOD m13
   METHOD m21
   METHOD m22
   METHOD m23
   METHOD m31
   METHOD m32
   METHOD m33
   METHOD dx
   METHOD dy
   METHOD setMatrix
   METHOD inverted
   METHOD adjoint
   METHOD transposed
   METHOD translate
   METHOD scale
   METHOD shear
   METHOD rotate
   METHOD rotateRadians
   METHOD reset
   METHOD map
   METHOD mapToPolygon
   METHOD mapRect
   METHOD toAffine
   METHOD squareToQuad
   METHOD quadToSquare
   METHOD quadToQuad
   METHOD fromTranslate
   METHOD fromScale

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QTransform>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QTransform>
#endif

#include <QtGui/QPainterPath>

/*
QTransform( Qt::Initialization )
*/
void QTransform_new1()
{
  QTransform * obj = new QTransform( (Qt::Initialization) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QTransform()
*/
void QTransform_new2()
{
  QTransform * obj = new QTransform();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QTransform( qreal h11, qreal h12, qreal h13, qreal h21, qreal h22, qreal h23, qreal h31, qreal h32, qreal h33 = 1.0 )
*/
void QTransform_new3()
{
  QTransform * obj = new QTransform( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), OPQREAL(9,1.0) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QTransform( qreal h11, qreal h12, qreal h21, qreal h22, qreal dx, qreal dy )
*/
void QTransform_new4()
{
  QTransform * obj = new QTransform( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QTransform( const QMatrix & mtx )
*/
void QTransform_new5()
{
  QTransform * obj = new QTransform( *PQMATRIX(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QTransform( const QTransform & other )
*/
void QTransform_new6()
{
  QTransform * obj = new QTransform( *PQTRANSFORM(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QTRANSFORM_NEW )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    QTransform_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QTransform_new2();
  }
  else if( ISBETWEEN(8,9) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) && HB_ISNUM(8) && ( HB_ISNUM(9)||HB_ISNIL(9)) )
  {
    QTransform_new3();
  }
  else if( ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
  {
    QTransform_new4();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QTransform_new5();
  }
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    QTransform_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTRANSFORM_DELETE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isAffine() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISAFFINE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAffine() );
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
bool isIdentity() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISIDENTITY )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isIdentity() );
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
bool isInvertible() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISINVERTIBLE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isInvertible() );
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
bool isScaling() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISSCALING )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isScaling() );
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
bool isRotating() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISROTATING )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRotating() );
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
bool isTranslating() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISTRANSLATING )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTranslating() );
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
QTransform::TransformationType type() const
*/
HB_FUNC_STATIC( QTRANSFORM_TYPE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
qreal determinant() const
*/
HB_FUNC_STATIC( QTRANSFORM_DETERMINANT )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->determinant() );
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
qreal det() const
*/
HB_FUNC_STATIC( QTRANSFORM_DET )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->det() );
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
qreal m11() const
*/
HB_FUNC_STATIC( QTRANSFORM_M11 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m11() );
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
qreal m12() const
*/
HB_FUNC_STATIC( QTRANSFORM_M12 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m12() );
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
qreal m13() const
*/
HB_FUNC_STATIC( QTRANSFORM_M13 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m13() );
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
qreal m21() const
*/
HB_FUNC_STATIC( QTRANSFORM_M21 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m21() );
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
qreal m22() const
*/
HB_FUNC_STATIC( QTRANSFORM_M22 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m22() );
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
qreal m23() const
*/
HB_FUNC_STATIC( QTRANSFORM_M23 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m23() );
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
qreal m31() const
*/
HB_FUNC_STATIC( QTRANSFORM_M31 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m31() );
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
qreal m32() const
*/
HB_FUNC_STATIC( QTRANSFORM_M32 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m32() );
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
qreal m33() const
*/
HB_FUNC_STATIC( QTRANSFORM_M33 )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m33() );
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
qreal dx() const
*/
HB_FUNC_STATIC( QTRANSFORM_DX )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dx() );
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
qreal dy() const
*/
HB_FUNC_STATIC( QTRANSFORM_DY )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dy() );
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
void setMatrix( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 )
*/
HB_FUNC_STATIC( QTRANSFORM_SETMATRIX )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(9) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) && HB_ISNUM(8) && HB_ISNUM(9) )
    {
#endif
      obj->setMatrix( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform inverted( bool * invertible = 0 ) const
*/
HB_FUNC_STATIC( QTRANSFORM_INVERTED )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      bool par1;
      QTransform * ptr = new QTransform( obj->inverted( &par1 ) );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
      hb_storl( par1, 1 );
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
QTransform adjoint() const
*/
HB_FUNC_STATIC( QTRANSFORM_ADJOINT )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTransform * ptr = new QTransform( obj->adjoint() );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
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
QTransform transposed() const
*/
HB_FUNC_STATIC( QTRANSFORM_TRANSPOSED )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTransform * ptr = new QTransform( obj->transposed() );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
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
QTransform & translate( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QTRANSFORM_TRANSLATE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QTransform * ptr = &obj->translate( PQREAL(1), PQREAL(2) );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", false );
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
QTransform & scale( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QTRANSFORM_SCALE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QTransform * ptr = &obj->scale( PQREAL(1), PQREAL(2) );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", false );
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
QTransform & shear( qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QTRANSFORM_SHEAR )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QTransform * ptr = &obj->shear( PQREAL(1), PQREAL(2) );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", false );
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
QTransform & rotate( qreal a, Qt::Axis axis = Qt::ZAxis )
*/
HB_FUNC_STATIC( QTRANSFORM_ROTATE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QTransform * ptr = &obj->rotate( PQREAL(1), HB_ISNIL(2)? (Qt::Axis) Qt::ZAxis : (Qt::Axis) hb_parni(2) );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", false );
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
QTransform & rotateRadians( qreal a, Qt::Axis axis = Qt::ZAxis )
*/
HB_FUNC_STATIC( QTRANSFORM_ROTATERADIANS )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QTransform * ptr = &obj->rotateRadians( PQREAL(1), HB_ISNIL(2)? (Qt::Axis) Qt::ZAxis : (Qt::Axis) hb_parni(2) );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", false );
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
void reset()
*/
HB_FUNC_STATIC( QTRANSFORM_RESET )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint map( const QPoint & p ) const
*/
void QTransform_map1()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->map( *PQPOINT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPOINT", true );
  }
}

/*
QPointF map( const QPointF & p ) const
*/
void QTransform_map2()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->map( *PQPOINTF(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPOINTF", true );
  }
}

/*
QLine map( const QLine & l ) const
*/
void QTransform_map3()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QLine * ptr = new QLine( obj->map( *PQLINE(1) ) );
    Qt5xHb::createReturnClass( ptr, "QLINE", true );
  }
}

/*
QLineF map( const QLineF & l ) const
*/
void QTransform_map4()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->map( *PQLINEF(1) ) );
    Qt5xHb::createReturnClass( ptr, "QLINEF", true );
  }
}

/*
QPolygonF map( const QPolygonF & a ) const
*/
void QTransform_map5()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->map( *PQPOLYGONF(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygon map( const QPolygon & a ) const
*/
void QTransform_map6()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->map( *PQPOLYGON(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPOLYGON", true );
  }
}

/*
QRegion map( const QRegion & r ) const
*/
void QTransform_map7()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->map( *PQREGION(1) ) );
    Qt5xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
QPainterPath map( const QPainterPath & p ) const
*/
void QTransform_map8()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->map( *PQPAINTERPATH(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
  }
}

/*
void map( int x, int y, int * tx, int * ty ) const
*/
void QTransform_map9()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3;
    int par4;
    obj->map( PINT(1), PINT(2), &par3, &par4 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void map( qreal x, qreal y, qreal * tx, qreal * ty ) const
*/
void QTransform_map10()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    qreal par3;
    qreal par4;
    obj->map( PQREAL(1), PQREAL(2), &par3, &par4 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QTRANSFORM_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTransform_map1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QTransform_map2();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QTransform_map3();
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QTransform_map4();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QTransform_map5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QTransform_map6();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QTransform_map7();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QTransform_map8();
  }
  else if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    QTransform_map9();
  }
  else if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    QTransform_map10();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon mapToPolygon( const QRect & r ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPTOPOLYGON )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->mapToPolygon( *PQRECT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPOLYGON", true );
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
QRect mapRect( const QRect & ) const
*/
void QTransform_mapRect1()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->mapRect( *PQRECT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
QRectF mapRect( const QRectF & ) const
*/
void QTransform_mapRect2()
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRect( *PQRECTF(1) ) );
    Qt5xHb::createReturnClass( ptr, "QRECTF", true );
  }
}

HB_FUNC_STATIC( QTRANSFORM_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QTransform_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QTransform_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QMatrix & toAffine() const
*/
HB_FUNC_STATIC( QTRANSFORM_TOAFFINE )
{
  QTransform * obj = (QTransform *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMatrix * ptr = &obj->toAffine();
      Qt5xHb::createReturnClass( ptr, "QMATRIX", false );
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
static bool squareToQuad( const QPolygonF & square, QTransform & result )
*/
HB_FUNC_STATIC( QTRANSFORM_SQUARETOQUAD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQPOLYGONF(1) && ISQTRANSFORM(2) )
  {
#endif
    RBOOL( QTransform::squareToQuad( *PQPOLYGONF(1), *PQTRANSFORM(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool quadToSquare( const QPolygonF & quad, QTransform & result )
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOSQUARE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQPOLYGONF(1) && ISQTRANSFORM(2) )
  {
#endif
    RBOOL( QTransform::quadToSquare( *PQPOLYGONF(1), *PQTRANSFORM(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool quadToQuad( const QPolygonF & one, const QPolygonF & two, QTransform & result )
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOQUAD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISQPOLYGONF(1) && ISQPOLYGONF(2) && ISQTRANSFORM(3) )
  {
#endif
    RBOOL( QTransform::quadToQuad( *PQPOLYGONF(1), *PQPOLYGONF(2), *PQTRANSFORM(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QTransform fromTranslate( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QTRANSFORM_FROMTRANSLATE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
#endif
    QTransform * ptr = new QTransform( QTransform::fromTranslate( PQREAL(1), PQREAL(2) ) );
    Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QTransform fromScale( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QTRANSFORM_FROMSCALE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
#endif
    QTransform * ptr = new QTransform( QTransform::fromScale( PQREAL(1), PQREAL(2) ) );
    Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
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

HB_FUNC_STATIC( QTRANSFORM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTRANSFORM_NEWFROM );
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTRANSFORM_NEWFROM );
}

HB_FUNC_STATIC( QTRANSFORM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTRANSFORM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
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
