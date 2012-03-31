open(INFILE,$ARGV[0]);
while ($line = <INFILE>)
{
#kod Ÿród³owy strony nale¿y najpierw zapisaæ w pliku htm lub txt a nastêpnie wczytaæ jako parametr wywo³ania programu.

if($line=~/^<tr>\n*\s*<td class="dol1">\w*<.td>\n*\s*<td class="dol1">D(\w\w\w\s+\w\w\d)\n*\s*<.td>\n*\s*<td class="dol1">\d\w\w\n*\s*<.td>\n*\s*<td class="dol1">\w+\n*\s*<.td>\n*\s*<td class="dol1">\n*\s*(\d[3-9].\d\d)\n*\s*<.td>\n*\s*<td class="dol1">\n*\s*\.*\n*<.td>\n*\s*<td class="dol1">\n*\s*(.+[^a])\n*<.td>\n*\s*$/i
)
{
$kod=$1;
$godz=$2;
$naz=$3;
print "Kod zajec to: $kod\n";
print "Godzina to: $godz\n";
print "Nazwisko wykladowcy to: $naz\n";
}
}


