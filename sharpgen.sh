[ ! "$SG_FGC" ] && SG_FGC="ConsoleColor.Green"
[ ! "$SG_BGC" ] && SG_BGC="ConsoleColor.Black"
SG_VERSION="0.0.1 Alpha"

echo "//This file was automatically generated by unn4m3d's SharpGen $SG_VERSION"
echo "using System;"
echo
echo "class ASCIIArt{"
echo "    public static void Main(string[] args){"
echo "        var str = \"\" +"

SG_IFS=$IFS
IFS="\n"
while read line; do
  echo "        \"$line\\n\"+"
done
IFS=$SG_IFS
echo "        \"\";"
echo "        Console.ForegroundColor = $SG_FGC;"
echo "        Console.BackgroundColor = $SG_BGC;"
echo "        Console.Write(str);"
echo "    }"
echo "}"
