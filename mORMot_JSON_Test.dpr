program mORMot_JSON_Test;

{$APPTYPE CONSOLE}

uses
  mormot.core.os, mormot.core.json;

type TTest    = packed record
                         city         : String;
                         record01     : packed record
                                                 ax   : TDateTime;
                                                 bx   : String;
                                                 cx   : Double;
                                                 dx   : Int64;
                                                 ex   : array of String;
                                                 fx   : Int64;
                                                 gx   : String;
                                               end;
                         record02     : packed record
                                                 az   : TDateTime;
                                                 bz   : String;
                                                 cz   : Double;
                                                 &as  : Int64;
                                                 ez   : String;
                                                 fz   : Double;
                                                 gz   : Int64;
                                                 hz   : array of String;
                                               end;
                         record03     : packed record
                                                 ad   : TDateTime;
                                                 bd   : Double;
                                                 cd   : Double;
                                                 dd   : Double;
                                                 ed   : Double;
                                                 fd   : Int64;
                                               end;
                         record04     : packed record
                                                 ad   : TDateTime;
                                                 bd   : Double;
                                                 cd   : Double;
                                                 dd   : Double;
                                                 ed   : Double;
                                                 fd   : Int64;
                                               end;
                         record05     : packed record
                                                 ad   : TDateTime;
                                                 bd   : Double;
                                                 cd   : Double;
                                                 dd   : Double;
                                                 ed   : Double;
                                                 fd   : Int64;
                                               end;
                       end;
    TTestArray = array of TTest;

var tmp       : RawJson;
    new_array : TTestArray;

begin
  tmp := StringFromFile('JSON_Test_03.TXT');
  DynArrayLoadJson(new_array, Pointer(tmp), TypeInfo(TTestArray));
end.
