/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QXYSeriesSlots.h"

static QXYSeriesSlots * s = NULL;

QXYSeriesSlots::QXYSeriesSlots(QObject *parent) : QObject(parent)
{
}

QXYSeriesSlots::~QXYSeriesSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::clicked( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::doubleClicked( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::hovered( const QPointF & point, bool state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(QPointF,bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    PHB_ITEM pstate = hb_itemPutL( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ppoint, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
    hb_itemRelease( pstate );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::penChanged( const QPen & pen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "penChanged(QPen)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppen = hb_itemPutPtr( NULL, (QPen *) &pen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppen );
    hb_itemRelease( psender );
    hb_itemRelease( ppen );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointAdded( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointAdded(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointLabelsClippingChanged( bool clipping )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsClippingChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pclipping = hb_itemPutL( NULL, clipping );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pclipping );
    hb_itemRelease( psender );
    hb_itemRelease( pclipping );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointLabelsColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointLabelsFontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfont = hb_itemPutPtr( NULL, (QFont *) &font );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointLabelsFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsFormatChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointLabelsVisibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsVisibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointRemoved( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointRemoved(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointReplaced( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointReplaced(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointsRemoved( int index, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointsRemoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pcount );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pointsReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointsReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::pressed( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QXYSeriesSlots::released( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif

HB_FUNC( QXYSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clicked(QPointF)", "clicked(QPointF)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "colorChanged(QColor)", "colorChanged(QColor)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "doubleClicked(QPointF)", "doubleClicked(QPointF)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "hovered(QPointF,bool)", "hovered(QPointF,bool)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "penChanged(QPen)", "penChanged(QPen)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointAdded(int)", "pointAdded(int)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTLABELSCLIPPINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsClippingChanged(bool)", "pointLabelsClippingChanged(bool)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTLABELSCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsColorChanged(QColor)", "pointLabelsColorChanged(QColor)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTLABELSFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsFontChanged(QFont)", "pointLabelsFontChanged(QFont)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsFormatChanged(QString)", "pointLabelsFormatChanged(QString)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTLABELSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsVisibilityChanged(bool)", "pointLabelsVisibilityChanged(bool)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointRemoved(int)", "pointRemoved(int)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointReplaced(int)", "pointReplaced(int)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointsRemoved(int,int)", "pointsRemoved(int,int)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPOINTSREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointsReplaced()", "pointsReplaced()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pressed(QPointF)", "pressed(QPointF)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QXYSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QXYSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "released(QPointF)", "released(QPointF)" ) );
#else
  hb_retl( false );
#endif
}

