import std.stdio : writeln;
import std.algorithm : map;
import std.conv: text;
import std.string: indexOf;
import std.typecons : Yes;

string arb(string text) {
    string input  = "BDFGHJKLMNPRSTVZbdfghjklmnprstvz";
    string output = "ZVTSRPNMLKJHGFDBzvtsrpnmlkjhgfdb";
    
    return text.map!(c => indexOf(input, c, 1, Yes.caseSensitive) != -1 ? output[indexOf(input, c, 1, Yes.caseSensitive)] : c).text;
}

void main() {
    string str_in = "LIAHARAZA AKAHEO HEREFHA FHAFHY KY FAOKA E";

    writeln;
    writeln("Teny adika  <<<: ", str_in);
    writeln(">>> Dika mazava: ", arb(str_in));
}
