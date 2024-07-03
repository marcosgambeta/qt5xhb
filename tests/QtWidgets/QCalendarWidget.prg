//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oCal

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oCal := QCalendarWidget():new( oWindow )
   oCal:move( 20, 20 )
   oCal:setTooltip( "Eu sou um QCalendarWidget" )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
