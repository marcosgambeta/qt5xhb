/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QFont

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bold
   METHOD capitalization
   METHOD defaultFamily
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD fromString
   METHOD isCopyOf
   METHOD italic
   METHOD kerning
   METHOD key
   METHOD lastResortFamily
   METHOD lastResortFont
   METHOD letterSpacing
   METHOD letterSpacingType
   METHOD overline
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD rawName
   METHOD resolve
   METHOD setBold
   METHOD setCapitalization
   METHOD setFamily
   METHOD setFixedPitch
   METHOD setItalic
   METHOD setKerning
   METHOD setLetterSpacing
   METHOD setOverline
   METHOD setPixelSize
   METHOD setPointSize
   METHOD setPointSizeF
   METHOD setRawMode
   METHOD setRawName
   METHOD setStretch
   METHOD setStrikeOut
   METHOD setStyle
   METHOD setStyleHint
   METHOD setStyleStrategy
   METHOD setUnderline
   METHOD setWeight
   METHOD setWordSpacing
   METHOD stretch
   METHOD strikeOut
   METHOD style
   METHOD styleHint
   METHOD styleStrategy
   METHOD toString
   METHOD underline
   METHOD weight
   METHOD wordSpacing
   METHOD insertSubstitution
   METHOD insertSubstitutions
   METHOD substitute
   METHOD substitutes
   METHOD substitutions

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFont
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFont>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFont>
#endif

#include <QStringList>

/*
QFont ()
*/
void QFont_new1 ()
{
  QFont * o = new QFont (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
*/
void QFont_new2 ()
{
  int par2 = ISNIL(2)? -1 : hb_parni(2);
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  bool par4 = ISNIL(4)? false : hb_parl(4);
  QFont * o = new QFont ( PQSTRING(1), par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFont ( const QFont & font, QPaintDevice * pd )
*/
void QFont_new3 ()
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QPaintDevice * par2 = (QPaintDevice *) _qt5xhb_itemGetPtr(2);
  QFont * o = new QFont ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFont ( const QFont & font )
*/
void QFont_new4 ()
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QFont * o = new QFont ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QFont ()
//[2]QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
//[3]QFont ( const QFont & font, QPaintDevice * pd )
//[4]QFont ( const QFont & font )

HB_FUNC_STATIC( QFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFont_new1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTLOG(4) )
  {
    QFont_new2();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) ) // TODO: implementar ISQPAINTDEVICE
  {
    QFont_new3();
  }
  else if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONT_DELETE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool bold () const
*/
HB_FUNC_STATIC( QFONT_BOLD )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->bold (  ) );
  }
}

/*
Capitalization capitalization () const
*/
HB_FUNC_STATIC( QFONT_CAPITALIZATION )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->capitalization (  ) );
  }
}

/*
QString defaultFamily () const
*/
HB_FUNC_STATIC( QFONT_DEFAULTFAMILY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->defaultFamily (  ).toLatin1().data() );
  }
}

/*
bool exactMatch () const
*/
HB_FUNC_STATIC( QFONT_EXACTMATCH )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->exactMatch (  ) );
  }
}

/*
QString family () const
*/
HB_FUNC_STATIC( QFONT_FAMILY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->family (  ).toLatin1().data() );
  }
}

/*
bool fixedPitch () const
*/
HB_FUNC_STATIC( QFONT_FIXEDPITCH )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->fixedPitch (  ) );
  }
}

/*
bool fromString ( const QString & descrip )
*/
HB_FUNC_STATIC( QFONT_FROMSTRING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retl( obj->fromString ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isCopyOf ( const QFont & f ) const
*/
HB_FUNC_STATIC( QFONT_ISCOPYOF )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONT(1) )
    {
      QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isCopyOf ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool italic () const
*/
HB_FUNC_STATIC( QFONT_ITALIC )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->italic (  ) );
  }
}

/*
bool kerning () const
*/
HB_FUNC_STATIC( QFONT_KERNING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->kerning (  ) );
  }
}

/*
QString key () const
*/
HB_FUNC_STATIC( QFONT_KEY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->key (  ).toLatin1().data() );
  }
}

/*
QString lastResortFamily () const
*/
HB_FUNC_STATIC( QFONT_LASTRESORTFAMILY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->lastResortFamily (  ).toLatin1().data() );
  }
}

/*
QString lastResortFont () const
*/
HB_FUNC_STATIC( QFONT_LASTRESORTFONT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->lastResortFont (  ).toLatin1().data() );
  }
}

/*
qreal letterSpacing () const
*/
HB_FUNC_STATIC( QFONT_LETTERSPACING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->letterSpacing (  ) );
  }
}

/*
SpacingType letterSpacingType () const
*/
HB_FUNC_STATIC( QFONT_LETTERSPACINGTYPE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->letterSpacingType (  ) );
  }
}

/*
bool overline () const
*/
HB_FUNC_STATIC( QFONT_OVERLINE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->overline (  ) );
  }
}

/*
int pixelSize () const
*/
HB_FUNC_STATIC( QFONT_PIXELSIZE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pixelSize (  ) );
  }
}

/*
int pointSize () const
*/
HB_FUNC_STATIC( QFONT_POINTSIZE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pointSize (  ) );
  }
}

/*
qreal pointSizeF () const
*/
HB_FUNC_STATIC( QFONT_POINTSIZEF )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->pointSizeF (  ) );
  }
}

/*
bool rawMode () const
*/
HB_FUNC_STATIC( QFONT_RAWMODE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->rawMode (  ) );
  }
}

/*
QString rawName () const
*/
HB_FUNC_STATIC( QFONT_RAWNAME )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->rawName (  ).toLatin1().data() );
  }
}

/*
QFont resolve ( const QFont & other ) const
*/
HB_FUNC_STATIC( QFONT_RESOLVE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONT(1) )
    {
      QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
      QFont * ptr = new QFont( obj->resolve ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBold ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETBOLD )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setBold ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCapitalization ( Capitalization caps )
*/
HB_FUNC_STATIC( QFONT_SETCAPITALIZATION )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setCapitalization (  (QFont::Capitalization) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFamily ( const QString & family )
*/
HB_FUNC_STATIC( QFONT_SETFAMILY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFamily ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedPitch ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETFIXEDPITCH )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFixedPitch ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItalic ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETITALIC )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setItalic ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKerning ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETKERNING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setKerning ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLetterSpacing ( SpacingType type, qreal spacing )
*/
HB_FUNC_STATIC( QFONT_SETLETTERSPACING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      int par1 = hb_parni(1);
      obj->setLetterSpacing (  (QFont::SpacingType) par1, PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOverline ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETOVERLINE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setOverline ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixelSize ( int pixelSize )
*/
HB_FUNC_STATIC( QFONT_SETPIXELSIZE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPixelSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPointSize ( int pointSize )
*/
HB_FUNC_STATIC( QFONT_SETPOINTSIZE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPointSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPointSizeF ( qreal pointSize )
*/
HB_FUNC_STATIC( QFONT_SETPOINTSIZEF )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPointSizeF ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRawMode ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETRAWMODE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setRawMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRawName ( const QString & name )
*/
HB_FUNC_STATIC( QFONT_SETRAWNAME )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setRawName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStretch ( int factor )
*/
HB_FUNC_STATIC( QFONT_SETSTRETCH )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStretch ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStrikeOut ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETSTRIKEOUT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setStrikeOut ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( Style style )
*/
HB_FUNC_STATIC( QFONT_SETSTYLE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setStyle (  (QFont::Style) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyleHint ( StyleHint hint, StyleStrategy strategy = PreferDefault )
*/
HB_FUNC_STATIC( QFONT_SETSTYLEHINT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par1 = hb_parni(1);
      int par2 = ISNIL(2)? (int) QFont::PreferDefault : hb_parni(2);
      obj->setStyleHint (  (QFont::StyleHint) par1,  (QFont::StyleStrategy) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyleStrategy ( StyleStrategy s )
*/
HB_FUNC_STATIC( QFONT_SETSTYLESTRATEGY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setStyleStrategy (  (QFont::StyleStrategy) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUnderline ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETUNDERLINE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setUnderline ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWeight ( int weight )
*/
HB_FUNC_STATIC( QFONT_SETWEIGHT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWeight ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWordSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QFONT_SETWORDSPACING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWordSpacing ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int stretch () const
*/
HB_FUNC_STATIC( QFONT_STRETCH )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->stretch (  ) );
  }
}

/*
bool strikeOut () const
*/
HB_FUNC_STATIC( QFONT_STRIKEOUT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->strikeOut (  ) );
  }
}

/*
Style style () const
*/
HB_FUNC_STATIC( QFONT_STYLE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->style (  ) );
  }
}

/*
StyleHint styleHint () const
*/
HB_FUNC_STATIC( QFONT_STYLEHINT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->styleHint (  ) );
  }
}

/*
StyleStrategy styleStrategy () const
*/
HB_FUNC_STATIC( QFONT_STYLESTRATEGY )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->styleStrategy (  ) );
  }
}

/*
QString toString () const
*/
HB_FUNC_STATIC( QFONT_TOSTRING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}

/*
bool underline () const
*/
HB_FUNC_STATIC( QFONT_UNDERLINE )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->underline (  ) );
  }
}

/*
int weight () const
*/
HB_FUNC_STATIC( QFONT_WEIGHT )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->weight (  ) );
  }
}

/*
qreal wordSpacing () const
*/
HB_FUNC_STATIC( QFONT_WORDSPACING )
{
  QFont * obj = (QFont *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->wordSpacing (  ) );
  }
}

/*
static void insertSubstitution ( const QString & familyName, const QString & substituteName )
*/
HB_FUNC_STATIC( QFONT_INSERTSUBSTITUTION )
{
  if( ISCHAR(1) && ISCHAR(2) )
  {
    QFont::insertSubstitution ( PQSTRING(1), PQSTRING(2) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void insertSubstitutions ( const QString & familyName, const QStringList & substituteNames )
*/
HB_FUNC_STATIC( QFONT_INSERTSUBSTITUTIONS )
{
  if( ISCHAR(1) && ISARRAY(2) )
  {
    QStringList par2 = _qt5xhb_convert_array_parameter_to_qstringlist(2);
    //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
    //int i2;
    //int nLen2 = hb_arrayLen(aStrings2);
    //for (i2=0;i2<nLen2;i2++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
    //  par2 << temp;
    //}
    QFont::insertSubstitutions ( PQSTRING(1), par2 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString substitute ( const QString & familyName )
*/
HB_FUNC_STATIC( QFONT_SUBSTITUTE )
{
  if( ISCHAR(1) )
  {
    hb_retc( (const char *) QFont::substitute ( PQSTRING(1) ).toLatin1().data() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList substitutes ( const QString & familyName )
*/
HB_FUNC_STATIC( QFONT_SUBSTITUTES )
{
  if( ISCHAR(1) )
  {
    QStringList strl = QFont::substitutes ( PQSTRING(1) );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList substitutions ()
*/
HB_FUNC_STATIC( QFONT_SUBSTITUTIONS )
{
  QStringList strl = QFont::substitutions (  );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}

HB_FUNC_STATIC( QFONT_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QFONT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONT_NEWFROM );
}

HB_FUNC_STATIC( QFONT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONT_NEWFROM );
}

HB_FUNC_STATIC( QFONT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
