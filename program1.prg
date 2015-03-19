CLEAR
=AFONT(gaFontArray)  && Array containing font names
gnNumFonts= ALEN(gaFontArray)  && Number of fonts
IF gnNumFonts > 10
   gnNumFonts = 10  && Display first 10 fonts
ENDIF

FOR nCount = 1 TO gnNumFonts
   ? ALLTRIM(gaFontArray(nCount))  && Display font name
   ?? '  This is an example of ' ;
      + ALLTRIM(gaFontArray(nCount)) FONT gaFontArray(nCount), 8
ENDFOR
