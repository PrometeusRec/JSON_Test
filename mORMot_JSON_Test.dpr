program mORMot_JSON_Test;

{$APPTYPE CONSOLE}

uses
  mormot.core.os, mormot.core.json;

type TTestArray    = array of packed record
                                       symbol       : String;
                                       Record01     : packed record
                                                               ax   : TDateTime;
                                                               bx   : String;
                                                               cx   : Double;
                                                               dx   : Int64;
                                                               ex   : array of String;
                                                               fx   : Int64;
                                                               gx   : String;
                                                             end;
                                       Record02     : packed record
                                                               az   : TDateTime;
                                                               bz   : String;
                                                               cz   : Double;
                                                               &as  : Int64;
                                                               ez   : String;
                                                               fz   : Double;
                                                               gz   : Int64;
                                                               hz   : array of String;
                                                             end;
                                       Record03     : packed record
                                                               ad   : TDateTime;
                                                               bd   : Double;
                                                               cd   : Double;
                                                               dd   : Double;
                                                               ed   : Double;
                                                               fd   : Int64;
                                                             end;
                                       Record04     : packed record
                                                               ad   : TDateTime;
                                                               bd   : Double;
                                                               cd   : Double;
                                                               dd   : Double;
                                                               ed   : Double;
                                                               fd   : Int64;
                                                             end;
                                       Record05     : packed record
                                                               ad   : TDateTime;
                                                               bd   : Double;
                                                               cd   : Double;
                                                               dd   : Double;
                                                               ed   : Double;
                                                               fd   : Int64;
                                                             end;
                                     end;

var tmp       : String;
    new_array : TTestArray;

begin
  tmp := StringFromFile('JSON_Test_03.TXT');
  DynArrayLoadJson(new_array,Pointer(tmp),TypeInfo(TTestArray));
end.
