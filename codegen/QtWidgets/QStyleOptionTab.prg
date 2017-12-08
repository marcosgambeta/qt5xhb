$header

#include "hbclass.ch"

%% TODO:
%% #ifndef QT_NO_TABBAR
%% #endif // QT_NO_TABBAR

CLASS QStyleOptionTab INHERIT QStyleOption

   METHOD new
%%   METHOD delete

   METHOD shape
   METHOD text
   METHOD icon
   METHOD row
   METHOD position
   METHOD selectedPosition
   METHOD cornerWidgets
   METHOD iconSize
   METHOD documentMode
   METHOD leftButtonSize
   METHOD rightButtonSize
   METHOD features

   METHOD setShape
   METHOD setText
   METHOD setIcon
   METHOD setRow
   METHOD setPosition
   METHOD setSelectedPosition
   METHOD setCornerWidgets
   METHOD setIconSize
   METHOD setDocumentMode
   METHOD setLeftButtonSize
   METHOD setRightButtonSize
   METHOD setFeatures

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionTab()
$internalConstructor=|new1|

$prototype=QStyleOptionTab(const QStyleOptionTab &other)
$internalConstructor=|new2|const QStyleOptionTab &

$prototype=QStyleOptionTab(int version) (protected)

//[1]QStyleOptionTab()
//[2]QStyleOptionTab(const QStyleOptionTab &other)
//[3]QStyleOptionTab(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTAB_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTab_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTAB(1) )
  {
    QStyleOptionTab_new2();
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

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=int row
$variableMethod=|int|row|
$variableMethod=|void|row,setRow|int

$prototype=TabPosition position
$variableMethod=|QStyleOptionTab::TabPosition|position|
$variableMethod=|void|position,setPosition|QStyleOptionTab::TabPosition

$prototype=SelectedPosition selectedPosition
$variableMethod=|QStyleOptionTab::SelectedPosition|selectedPosition|
$variableMethod=|void|selectedPosition,setSelectedPosition|QStyleOptionTab::SelectedPosition

$prototype=CornerWidgets cornerWidgets
$variableMethod=|QStyleOptionTab::CornerWidgets|cornerWidgets|
$variableMethod=|void|cornerWidgets,setCornerWidgets|QStyleOptionTab::CornerWidgets

$prototype=QSize iconSize
$variableMethod=|QSize|iconSize|
$variableMethod=|void|iconSize,setIconSize|QSize

$prototype=bool documentMode
$variableMethod=|bool|documentMode|
$variableMethod=|void|documentMode,setDocumentMode|bool

$prototype=QSize leftButtonSize
$variableMethod=|QSize|leftButtonSize|
$variableMethod=|void|leftButtonSize,setLeftButtonSize|QSize

$prototype=QSize rightButtonSize
$variableMethod=|QSize|rightButtonSize|
$variableMethod=|void|rightButtonSize,setRightButtonSize|QSize

$prototype=TabFeatures features
$variableMethod=|QStyleOptionTab::TabFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionTab::TabFeatures

#pragma ENDDUMP
