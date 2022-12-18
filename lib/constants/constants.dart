import 'dart:ui';

var pixelRatio = window.devicePixelRatio;

var logicalScreenSize = window.physicalSize / pixelRatio;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;
