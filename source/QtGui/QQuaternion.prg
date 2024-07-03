//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QQuaternion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isIdentity
   METHOD vector
   METHOD setVector
   METHOD x
   METHOD y
   METHOD z
   METHOD scalar
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD setScalar
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD conjugate
   METHOD rotatedVector
   METHOD toVector4D
   METHOD fromAxisAndAngle
   METHOD slerp
   METHOD nlerp

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQuaternion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QQuaternion>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QQuaternion>
#endif

HB_FUNC_STATIC(QQUATERNION_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QQuaternion()
    */
    QQuaternion *obj = new QQuaternion();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    QQuaternion( float scalar, float xpos, float ypos, float zpos )
    */
    QQuaternion *obj = new QQuaternion(PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISOBJECT(2))
  {
    /*
    QQuaternion( float scalar, const QVector3D & vector )
    */
    QQuaternion *obj = new QQuaternion(PFLOAT(1), *PQVECTOR3D(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISOBJECT(1))
  {
    /*
    QQuaternion( const QVector4D & vector )
    */
    QQuaternion *obj = new QQuaternion(*PQVECTOR4D(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QQUATERNION_DELETE)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QQUATERNION_ISNULL)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
bool isIdentity() const
*/
HB_FUNC_STATIC(QQUATERNION_ISIDENTITY)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isIdentity());
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
QVector3D vector() const
*/
HB_FUNC_STATIC(QQUATERNION_VECTOR)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector3D *ptr = new QVector3D(obj->vector());
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QQUATERNION_SETVECTOR)
{
  if (ISNUMPAR(1) && ISQVECTOR3D(1))
  {
    /*
    void setVector( const QVector3D & vector )
    */
    QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setVector(*PQVECTOR3D(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void setVector( float x, float y, float z )
    */
    QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setVector(PFLOAT(1), PFLOAT(2), PFLOAT(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
float x() const
*/
HB_FUNC_STATIC(QQUATERNION_X)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->x());
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
float y() const
*/
HB_FUNC_STATIC(QQUATERNION_Y)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->y());
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
float z() const
*/
HB_FUNC_STATIC(QQUATERNION_Z)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->z());
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
float scalar() const
*/
HB_FUNC_STATIC(QQUATERNION_SCALAR)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->scalar());
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
void setX( float x )
*/
HB_FUNC_STATIC(QQUATERNION_SETX)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setX(PFLOAT(1));
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
void setY( float y )
*/
HB_FUNC_STATIC(QQUATERNION_SETY)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setY(PFLOAT(1));
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
void setZ( float z )
*/
HB_FUNC_STATIC(QQUATERNION_SETZ)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setZ(PFLOAT(1));
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
void setScalar( float scalar )
*/
HB_FUNC_STATIC(QQUATERNION_SETSCALAR)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setScalar(PFLOAT(1));
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
float length() const
*/
HB_FUNC_STATIC(QQUATERNION_LENGTH)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->length());
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
float lengthSquared() const
*/
HB_FUNC_STATIC(QQUATERNION_LENGTHSQUARED)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->lengthSquared());
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
QQuaternion normalized() const
*/
HB_FUNC_STATIC(QQUATERNION_NORMALIZED)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QQuaternion *ptr = new QQuaternion(obj->normalized());
      Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
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
void normalize()
*/
HB_FUNC_STATIC(QQUATERNION_NORMALIZE)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->normalize();
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
QQuaternion conjugate() const
*/
HB_FUNC_STATIC(QQUATERNION_CONJUGATE)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QQuaternion *ptr = new QQuaternion(obj->conjugate());
      Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
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
QVector3D rotatedVector( const QVector3D & vector ) const
*/
HB_FUNC_STATIC(QQUATERNION_ROTATEDVECTOR)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVECTOR3D(1))
    {
#endif
      QVector3D *ptr = new QVector3D(obj->rotatedVector(*PQVECTOR3D(1)));
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
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
QVector4D toVector4D() const
*/
HB_FUNC_STATIC(QQUATERNION_TOVECTOR4D)
{
  QQuaternion *obj = (QQuaternion *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector4D *ptr = new QVector4D(obj->toVector4D());
      Qt5xHb::createReturnClass(ptr, "QVECTOR4D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QQUATERNION_FROMAXISANDANGLE)
{
  if (ISNUMPAR(2) && ISQVECTOR3D(1) && HB_ISNUM(2))
  {
    /*
    static QQuaternion fromAxisAndAngle( const QVector3D & axis, float angle )
    */
    QQuaternion *ptr = new QQuaternion(QQuaternion::fromAxisAndAngle(*PQVECTOR3D(1), PFLOAT(2)));
    Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    static QQuaternion fromAxisAndAngle( float x, float y, float z, float angle )
    */
    QQuaternion *ptr = new QQuaternion(QQuaternion::fromAxisAndAngle(PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4)));
    Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QQuaternion slerp( const QQuaternion & q1, const QQuaternion & q2, float t )
*/
HB_FUNC_STATIC(QQUATERNION_SLERP)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && ISQQUATERNION(1) && ISQQUATERNION(2) && HB_ISNUM(3))
  {
#endif
    QQuaternion *ptr = new QQuaternion(QQuaternion::slerp(*PQQUATERNION(1), *PQQUATERNION(2), PFLOAT(3)));
    Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QQuaternion nlerp( const QQuaternion & q1, const QQuaternion & q2, float t )
*/
HB_FUNC_STATIC(QQUATERNION_NLERP)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && ISQQUATERNION(1) && ISQQUATERNION(2) && HB_ISNUM(3))
  {
#endif
    QQuaternion *ptr = new QQuaternion(QQuaternion::nlerp(*PQQUATERNION(1), *PQQUATERNION(2), PFLOAT(3)));
    Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QQUATERNION_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QQUATERNION_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QQUATERNION_NEWFROM);
}

HB_FUNC_STATIC(QQUATERNION_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QQUATERNION_NEWFROM);
}

HB_FUNC_STATIC(QQUATERNION_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QQUATERNION_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
