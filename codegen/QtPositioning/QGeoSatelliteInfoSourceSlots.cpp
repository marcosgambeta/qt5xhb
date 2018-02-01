%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,2,0|satellitesInViewUpdated( const QList<QGeoSatelliteInfo> & satellites )
$slot=5,2,0|satellitesInUseUpdated( const QList<QGeoSatelliteInfo> & satellites )
$slot=5,2,0|requestTimeout()
$slot=5,2,0|error( QGeoSatelliteInfoSource::Error error )
$endSlotsClass

$signalMethod=5,2,0|satellitesInViewUpdated(QList<QGeoSatelliteInfo>)
$signalMethod=5,2,0|satellitesInUseUpdated(QList<QGeoSatelliteInfo>)
$signalMethod=5,2,0|requestTimeout()
$signalMethod=5,2,0|error(QGeoSatelliteInfoSource::Error)