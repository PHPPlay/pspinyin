add-type -path "C:\Program Files (x86)\Microsoft Visual Studio International Pack\Simplified Chinese Pin-Yin Conversion Library\ChnCharInfo.dll"
$inputtxt="
李四
王三
刘二
"
#$shortR=""
$allR=""
foreach($c in $inputtxt.Trim().ToCharArray()){
try {
$chineseChar=New-Object  Microsoft.International.Converters.PinYinConverter.ChineseChar($c)
#$shortR+=$chineseChar.Pinyins[0].Substring(0, 1).ToLower() 
$allR += $chineseChar.Pinyins[0].Substring(0,$chineseChar.Pinyins[0].Length - 1).ToLower() +" "
}
catch {
#$shortR+=$c
$allR +=$c
}
}
#$shortR
$allR
