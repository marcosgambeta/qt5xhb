/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
REQUEST QRECT
REQUEST QTEXTDOCUMENT
REQUEST QVARIANT
#endif

CLASS QPlainTextEdit INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD anchorAt
   METHOD backgroundVisible
   METHOD blockCount
   METHOD canPaste
   METHOD centerOnScroll
   METHOD createStandardContextMenu
   METHOD currentCharFormat
   METHOD cursorForPosition
   METHOD cursorRect
   METHOD cursorWidth
   METHOD document
   METHOD documentTitle
   METHOD ensureCursorVisible
   METHOD find
   METHOD isReadOnly
   METHOD isUndoRedoEnabled
   METHOD lineWrapMode
   METHOD loadResource
   METHOD maximumBlockCount
   METHOD mergeCurrentCharFormat
   METHOD moveCursor
   METHOD overwriteMode
   METHOD print
   METHOD setBackgroundVisible
   METHOD setCenterOnScroll
   METHOD setCurrentCharFormat
   METHOD setCursorWidth
   METHOD setDocument
   METHOD setDocumentTitle
   METHOD setLineWrapMode
   METHOD setMaximumBlockCount
   METHOD setOverwriteMode
   METHOD setReadOnly
   METHOD setTabChangesFocus
   METHOD setTabStopWidth
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setUndoRedoEnabled
   METHOD setWordWrapMode
   METHOD tabChangesFocus
   METHOD tabStopWidth
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD toPlainText
   METHOD wordWrapMode
   METHOD appendHtml
   METHOD appendPlainText
   METHOD centerCursor
   METHOD clear
   METHOD copy
   METHOD cut
   METHOD insertPlainText
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD setPlainText
   METHOD undo

   METHOD onBlockCountChanged
   METHOD onCopyAvailable
   METHOD onCursorPositionChanged
   METHOD onModificationChanged
   METHOD onRedoAvailable
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onUndoAvailable
   METHOD onUpdateRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlainTextEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPlainTextEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPlainTextEdit>
#endif

#include <QPrinter>
#include <QMenu>

/*
QPlainTextEdit ( QWidget * parent = 0 )
*/
void QPlainTextEdit_new1 ()
{
  QPlainTextEdit * o = new QPlainTextEdit ( OPQWIDGET(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
*/
void QPlainTextEdit_new2 ()
{
  QPlainTextEdit * o = new QPlainTextEdit ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QPlainTextEdit ( QWidget * parent = 0 )
//[2]QPlainTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPlainTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QPlainTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_DELETE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString anchorAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_ANCHORAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      RQSTRING( obj->anchorAt ( *PQPOINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool backgroundVisible () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_BACKGROUNDVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->backgroundVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int blockCount () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_BLOCKCOUNT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->blockCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool canPaste () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CANPASTE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->canPaste () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool centerOnScroll () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CENTERONSCROLL )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->centerOnScroll () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMenu * ptr = obj->createStandardContextMenu ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextCharFormat currentCharFormat () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTextCharFormat * ptr = new QTextCharFormat( obj->currentCharFormat () );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextCursor cursorForPosition ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORFORPOSITION )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      QTextCursor * ptr = new QTextCursor( obj->cursorForPosition ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect cursorRect ( const QTextCursor & cursor ) const
*/
void QPlainTextEdit_cursorRect1 ()
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->cursorRect ( *PQTEXTCURSOR(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect cursorRect () const
*/
void QPlainTextEdit_cursorRect2 ()
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->cursorRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]QRect cursorRect ( const QTextCursor & cursor ) const
//[2]QRect cursorRect () const

HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QPlainTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QPlainTextEdit_cursorRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int cursorWidth () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->cursorWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_DOCUMENT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTextDocument * ptr = obj->document ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QTEXTDOCUMENT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString documentTitle () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_DOCUMENTTITLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->documentTitle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void ensureCursorVisible ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_ENSURECURSORVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->ensureCursorVisible ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_FIND )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
      RBOOL( obj->find ( PQSTRING(1), ISNIL(2)? (QTextDocument::FindFlags) 0 : (QTextDocument::FindFlags) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_ISREADONLY )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReadOnly () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isUndoRedoEnabled () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_ISUNDOREDOENABLED )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isUndoRedoEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
LineWrapMode lineWrapMode () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_LINEWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->lineWrapMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_LOADRESOURCE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQURL(2) )
    {
      QVariant * ptr = new QVariant( obj->loadResource ( PINT(1), *PQURL(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int maximumBlockCount () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_MAXIMUMBLOCKCOUNT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximumBlockCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_MERGECURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
      obj->mergeCurrentCharFormat ( *PQTEXTCHARFORMAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_MOVECURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
      obj->moveCursor ( (QTextCursor::MoveOperation) hb_parni(1), ISNIL(2)? (QTextCursor::MoveMode) QTextCursor::MoveAnchor : (QTextCursor::MoveMode) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool overwriteMode () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_OVERWRITEMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->overwriteMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void print ( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_PRINT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPRINTER(1) )
    {
      obj->print ( PQPRINTER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundVisible ( bool visible )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETBACKGROUNDVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setBackgroundVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenterOnScroll ( bool enabled )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETCENTERONSCROLL )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setCenterOnScroll ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETCURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
      obj->setCurrentCharFormat ( *PQTEXTCHARFORMAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursorWidth ( int width )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETCURSORWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCursorWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocument ( QTextDocument * document )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETDOCUMENT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
    {
      obj->setDocument ( PQTEXTDOCUMENT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocumentTitle ( const QString & title )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETDOCUMENTTITLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setDocumentTitle ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineWrapMode ( LineWrapMode mode )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETLINEWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLineWrapMode ( (QPlainTextEdit::LineWrapMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumBlockCount ( int maximum )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETMAXIMUMBLOCKCOUNT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaximumBlockCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOverwriteMode ( bool overwrite )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETOVERWRITEMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setOverwriteMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setReadOnly ( bool ro )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETREADONLY )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabChangesFocus ( bool b )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETTABCHANGESFOCUS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setTabChangesFocus ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabStopWidth ( int width )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETTABSTOPWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTabStopWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETTEXTCURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
    {
      obj->setTextCursor ( *PQTEXTCURSOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETTEXTINTERACTIONFLAGS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextInteractionFlags ( (Qt::TextInteractionFlags) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUndoRedoEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETUNDOREDOENABLED )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setUndoRedoEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWordWrapMode ( QTextOption::WrapMode policy )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETWORDWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWordWrapMode ( (QTextOption::WrapMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tabChangesFocus () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_TABCHANGESFOCUS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->tabChangesFocus () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int tabStopWidth () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_TABSTOPWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->tabStopWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextCursor textCursor () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_TEXTCURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTextCursor * ptr = new QTextCursor( obj->textCursor () );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_TEXTINTERACTIONFLAGS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textInteractionFlags () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_TOPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toPlainText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextOption::WrapMode wordWrapMode () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_WORDWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->wordWrapMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void appendHtml ( const QString & html )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_APPENDHTML )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->appendHtml ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_APPENDPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->appendPlainText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerCursor ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CENTERCURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->centerCursor ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CLEAR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void copy ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_COPY )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->copy ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cut ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CUT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->cut ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_INSERTPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->insertPlainText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paste ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_PASTE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->paste ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void redo ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_REDO )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->redo ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectAll ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SELECTALL )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->selectAll ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_SETPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPlainText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void undo ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_UNDO )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->undo ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QPlainTextEditSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONBLOCKCOUNTCHANGED )
{
  QPlainTextEditSlots_connect_signal( "blockCountChanged(int)", "blockCountChanged(int)" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONCOPYAVAILABLE )
{
  QPlainTextEditSlots_connect_signal( "copyAvailable(bool)", "copyAvailable(bool)" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONCURSORPOSITIONCHANGED )
{
  QPlainTextEditSlots_connect_signal( "cursorPositionChanged()", "cursorPositionChanged()" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONMODIFICATIONCHANGED )
{
  QPlainTextEditSlots_connect_signal( "modificationChanged(bool)", "modificationChanged(bool)" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONREDOAVAILABLE )
{
  QPlainTextEditSlots_connect_signal( "redoAvailable(bool)", "redoAvailable(bool)" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONSELECTIONCHANGED )
{
  QPlainTextEditSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONTEXTCHANGED )
{
  QPlainTextEditSlots_connect_signal( "textChanged()", "textChanged()" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONUNDOAVAILABLE )
{
  QPlainTextEditSlots_connect_signal( "undoAvailable(bool)", "undoAvailable(bool)" );
}

HB_FUNC_STATIC( QPLAINTEXTEDIT_ONUPDATEREQUEST )
{
  QPlainTextEditSlots_connect_signal( "updateRequest(QRect,int)", "updateRequest(QRect,int)" );
}

#pragma ENDDUMP
