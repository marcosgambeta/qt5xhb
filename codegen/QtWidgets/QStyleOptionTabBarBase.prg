$header

#include "hbclass.ch"

%% TODO:
%% #ifndef QT_NO_TABBAR
%% #endif // QT_NO_TABBAR

CLASS QStyleOptionTabBarBase INHERIT QStyleOption

   METHOD new
%%   METHOD delete

   METHOD shape
   METHOD tabBarRect
   METHOD selectedTabRect
   METHOD documentMode

   METHOD setShape
   METHOD setTabBarRect
   METHOD setSelectedTabRect
   METHOD setDocumentMode

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionTabBarBase()
$internalConstructor=|new1|

$prototype=QStyleOptionTabBarBase(const QStyleOptionTabBarBase &other)
$internalConstructor=|new2|const QStyleOptionTabBarBase &

$prototype=QStyleOptionTabBarBase(int version) (protected)

//[1]QStyleOptionTabBarBase()
//[2]QStyleOptionTabBarBase(const QStyleOptionTabBarBase &other)
//[3]QStyleOptionTabBarBase(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTabBarBase_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABBARBASE(1) )
  {
    QStyleOptionTabBarBase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QTabBar::Shape shape
$variableMethod=|QTabBar::Shape|shape|
$variableMethod=|void|shape,setShape|QTabBar::Shape

$prototype=QRect tabBarRect
$variableMethod=|QRect|tabBarRect|
$variableMethod=|void|tabBarRect,setTabBarRect|QRect

$prototype=QRect selectedTabRect
$variableMethod=|QRect|selectedTabRect|
$variableMethod=|void|selectedTabRect,setSelectedTabRect|QRect

$prototype=bool documentMode
$variableMethod=|bool|documentMode|
$variableMethod=|void|documentMode,setDocumentMode|bool

#pragma ENDDUMP
