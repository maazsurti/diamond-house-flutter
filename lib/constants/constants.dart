import 'dart:ui';

var pixelRatio = window.devicePixelRatio;

var logicalScreenSize = window.physicalSize / pixelRatio;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

var fontName = 'Poppins';

var header = {"Token": token};
var token =
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiSW5mb0BkaWFtb25kaG91c2Vrdy5jbyIsInVzZXJUeXBlIjoiREhSQ0QifQ.Fp1Sk1dFh5U4_FWfHfrOvTc2DgnXORDMPzvNzyfyivI";

//Routes

const mainTabRoute = 'maintabview';
