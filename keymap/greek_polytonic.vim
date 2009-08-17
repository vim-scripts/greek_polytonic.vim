" Vim Keymap file for Polytonic Greek (utf-8)
" Maintainer: Proteus <proteuss@sdf.lonestar.org>
" Last Updated: Mon 10 Aug 2009 14:00:00
"
"-----------------------------------------------------------------------------
" Installation:
" Copy this file to directory ~/.vim/keymap/
"-----------------------------------------------------------------------------
" Usage:
" Load the keymap:
"               set keymap=greek_polytonic
" Set encodings:  
"               set encoding=utf-8
"               set inputenc=utf-8
"               set fenc=utf-8
"  
"  Set vim to use a monospaced unicode font that includes all the "Greek
"  Extented" characters and symbols.
"    
"  Example: set guifont=Consolas\ Regular\ 16
"
"  Examples of suitable fonts are:
"
"   Dejavu Sans mono
"   Courier New
"   Bitstream Vera Sans Mono
"   Consolas 
"  
"  Also switch the keyboard to Greek with ALT-SHIFT (or whatever)
"
"  Notes: 
"    Consolas is a Microsoft font found in Windows 7 (The Consolas font
"    shipped with Windows Vista is not suitable). It is a very good monospaced
"    font for both displaying and for printing polytonic Greek text.  
"
"    If you have problems with printing greek utf-8 use
"    paps (http://paps.sourceforge.net/)
"    I use it from within vim by creating a command as folows:
"    :command Paps write !paps --font=Consolas\ 10 | lpr
"
"-----------------------------------------------------------------------------
"
" This keyboard layout allows the typing of multi-accented (polytonic) Greek
" text in the manner of writing by hand.  Accents and breathings are typed
" after the vowels in any order without dead keys. In other words, first we 
" type the letter and then we "decorate" it with the required accents.  This
" serves for a more comfortable typing of Greek.  Furthermore it allows easier
" correction of errors. A wrong accent (or no accent) can be replaced with
" with the correct one without deleting the character.  We simply place the
" cursor to the right of the vowel and press the required accent.  If the
" character can take the accent, it will be replaced by the accented version
" of the same character.
"
" Examples: a/, will give Small Alpha with Oxia.
"           a/] or a]/ will give Small Alpha with Oxia and Psili.
"           a, followed by any combination of /,],|, will give Small Alpha with 
"           Oxia and Psili and Ypogegrammeni.
"
" Typing of multi-accented Greek is easier this way because we need to memorize
" only a few accent keys as shown in the table below.
"
"-----------------------------------------------------------------------------
" Table of accents and breathings typed after the letter
"-----------------------------------------------------------------------------
"             /   OXIA
"             \   VARIA
"        = or ~   PERISPOMENI
"             ]   PSILI
"             [   DASIA
"             "   DIALYTIKA
"             |   YPOGEGRAMMENI
"             -   MACRON
"             ^   BRAXY
"
"  Lone accents are produced by typing any of the above (or combinations
"  thereoff) after a space. (Except lone Macron and Braxy which do not exist
"  in Unicode)
"
"  If you require to type any of the above symbols simply turn of the keymap by
"  pressing CTRL-^
"-----------------------------------------------------------------------------
"  Punctuations and other special symbols.
"-----------------------------------------------------------------------------
" .1   ANO TELEIA, (also ;.)
" .2   COLON (ANO - KATO TELEIA)
" E$	 EURO SIGN 
" >>	 RIGHT-POINTING QUOTATION MARK (EISAGOGIKA/OMOIOMATIKA) (also ;>) 
" <<	 LEFT-POINTING QUOTATION MARK  (EISAGOGIKA) (also ;<) 
" '	   APOSTROFOS
" --	 endash
" ---	 emdash
" ##	 ANO TONOS (Keraia)
" ###	 KATO TONOS (low Keraia)
" &&	 Abbreviated kai
" #st	 STIGMA
" #f	 DIGAMMA
" #k	 KOPPA
" #sa	 SAMPI
" #KO	 Archaic Qoppa (Capital)
" #ko	 Archaic qoppa (Small)
"
"-----------------------------------------------------------------------------
"
" This keymap loads the keymap greek_iso-8859-7 (part of the vim
" distribution) so all the dead keys for monotononic greek are also 
" available. So, for example, Small Alpha with Oxia can be typed with ;a or a/.
"
"
" Some key combinations have been taken from the greek_utf-8 keymap by
" Panagiotis Louridas distributed with the Vim package.
"
"-----------------------------------------------------------------------------
" Code begins here.
"-----------------------------------------------------------------------------
"  Table of letters with accents
"  the format each entry is:
"  ucs_number: [CASE, NAME, BREATHING, ACCENT, YPOGEGRAMMENI]
"-----------------------------------------------------------------------------
let grk_ucs_table = {
\0x386:['CAPITAL','ALPHA','','TONOS',''],
\0x388:['CAPITAL','EPSILON','','TONOS',''],
\0x389:['CAPITAL','ETA','','TONOS',''],
\0x38A:['CAPITAL','IOTA','','TONOS',''],
\0x38C:['CAPITAL','OMICRON','','TONOS',''],
\0x38E:['CAPITAL','UPSILON','','TONOS',''],
\0x38F:['CAPITAL','OMEGA','','TONOS',''],
\0x390:['SMALL','IOTA','DIALYTIKA','TONOS',''],
\0x391:['CAPITAL','ALPHA','','',''],
\0x395:['CAPITAL','EPSILON','','',''],
\0x397:['CAPITAL','ETA','','',''],
\0x399:['CAPITAL','IOTA','','',''],
\0x39F:['CAPITAL','OMICRON','','',''],
\0x3A1:['CAPITAL','RHO','','',''],
\0x3A5:['CAPITAL','UPSILON','','',''],
\0x3A8:['CAPITAL','PSI','','',''],
\0x3A9:['CAPITAL','OMEGA','','',''],
\0x3AA:['CAPITAL','IOTA','DIALYTIKA','',''],
\0x3AB:['CAPITAL','UPSILON','DIALYTIKA','',''],
\0x3AC:['SMALL','ALPHA','','TONOS',''],
\0x3AD:['SMALL','EPSILON','','TONOS',''],
\0x3AE:['SMALL','ETA','','TONOS',''],
\0x3AF:['SMALL','IOTA','','TONOS',''],
\0x3B0:['SMALL','UPSILON','DIALYTIKA','TONOS',''],
\0x3B1:['SMALL','ALPHA','','',''],
\0x3B5:['SMALL','EPSILON','','',''],
\0x3B7:['SMALL','ETA','','',''],
\0x3B9:['SMALL','IOTA','','',''],
\0x3BF:['SMALL','OMICRON','','',''],
\0x3C1:['SMALL','RHO','','',''],
\0x3C5:['SMALL','UPSILON','','',''],
\0x3C8:['SMALL','PSI','','',''],
\0x3C9:['SMALL','OMEGA','','',''],
\0x3CA:['SMALL','IOTA','DIALYTIKA','',''],
\0x3CB:['SMALL','UPSILON','DIALYTIKA','',''],
\0x3CC:['SMALL','OMICRON','','TONOS',''],
\0x3CD:['SMALL','UPSILON','','TONOS',''],
\0x3CE:['SMALL','OMEGA','','TONOS',''],
\0x1D68:['SMALL','RHO','','',''],
\0x1F00:['SMALL','ALPHA','PSILI','',''],
\0x1F01:['SMALL','ALPHA','DASIA','',''],
\0x1F02:['SMALL','ALPHA','PSILI','VARIA',''],
\0x1F03:['SMALL','ALPHA','DASIA','VARIA',''],
\0x1F04:['SMALL','ALPHA','PSILI','OXIA',''],
\0x1F05:['SMALL','ALPHA','DASIA','OXIA',''],
\0x1F06:['SMALL','ALPHA','PSILI','PERISPOMENI',''],
\0x1F07:['SMALL','ALPHA','DASIA','PERISPOMENI',''],
\0x1F08:['CAPITAL','ALPHA','PSILI','',''],
\0x1F09:['CAPITAL','ALPHA','DASIA','',''],
\0x1F0A:['CAPITAL','ALPHA','PSILI','VARIA',''],
\0x1F0B:['CAPITAL','ALPHA','DASIA','VARIA',''],
\0x1F0C:['CAPITAL','ALPHA','PSILI','OXIA',''],
\0x1F0D:['CAPITAL','ALPHA','DASIA','OXIA',''],
\0x1F0E:['CAPITAL','ALPHA','PSILI','PERISPOMENI',''],
\0x1F0F:['CAPITAL','ALPHA','DASIA','PERISPOMENI',''],
\0x1F10:['SMALL','EPSILON','PSILI','',''],
\0x1F11:['SMALL','EPSILON','DASIA','',''],
\0x1F12:['SMALL','EPSILON','PSILI','VARIA',''],
\0x1F13:['SMALL','EPSILON','DASIA','VARIA',''],
\0x1F14:['SMALL','EPSILON','PSILI','OXIA',''],
\0x1F15:['SMALL','EPSILON','DASIA','OXIA',''],
\0x1F18:['CAPITAL','EPSILON','PSILI','',''],
\0x1F19:['CAPITAL','EPSILON','DASIA','',''],
\0x1F1A:['CAPITAL','EPSILON','PSILI','VARIA',''],
\0x1F1B:['CAPITAL','EPSILON','DASIA','VARIA',''],
\0x1F1C:['CAPITAL','EPSILON','PSILI','OXIA',''],
\0x1F1D:['CAPITAL','EPSILON','DASIA','OXIA',''],
\0x1F20:['SMALL','ETA','PSILI','',''],
\0x1F21:['SMALL','ETA','DASIA','',''],
\0x1F22:['SMALL','ETA','PSILI','VARIA',''],
\0x1F23:['SMALL','ETA','DASIA','VARIA',''],
\0x1F24:['SMALL','ETA','PSILI','OXIA',''],
\0x1F25:['SMALL','ETA','DASIA','OXIA',''],
\0x1F26:['SMALL','ETA','PSILI','PERISPOMENI',''],
\0x1F27:['SMALL','ETA','DASIA','PERISPOMENI',''],
\0x1F28:['CAPITAL','ETA','PSILI','',''],
\0x1F29:['CAPITAL','ETA','DASIA','',''],
\0x1F2A:['CAPITAL','ETA','PSILI','VARIA',''],
\0x1F2B:['CAPITAL','ETA','DASIA','VARIA',''],
\0x1F2C:['CAPITAL','ETA','PSILI','OXIA',''],
\0x1F2D:['CAPITAL','ETA','DASIA','OXIA',''],
\0x1F2E:['CAPITAL','ETA','PSILI','PERISPOMENI',''],
\0x1F2F:['CAPITAL','ETA','DASIA','PERISPOMENI',''],
\0x1F30:['SMALL','IOTA','PSILI','',''],
\0x1F31:['SMALL','IOTA','DASIA','',''],
\0x1F32:['SMALL','IOTA','PSILI','VARIA',''],
\0x1F33:['SMALL','IOTA','DASIA','VARIA',''],
\0x1F34:['SMALL','IOTA','PSILI','OXIA',''],
\0x1F35:['SMALL','IOTA','DASIA','OXIA',''],
\0x1F36:['SMALL','IOTA','PSILI','PERISPOMENI',''],
\0x1F37:['SMALL','IOTA','DASIA','PERISPOMENI',''],
\0x1F38:['CAPITAL','IOTA','PSILI','',''],
\0x1F39:['CAPITAL','IOTA','DASIA','',''],
\0x1F3A:['CAPITAL','IOTA','PSILI','VARIA',''],
\0x1F3B:['CAPITAL','IOTA','DASIA','VARIA',''],
\0x1F3C:['CAPITAL','IOTA','PSILI','OXIA',''],
\0x1F3D:['CAPITAL','IOTA','DASIA','OXIA',''],
\0x1F3E:['CAPITAL','IOTA','PSILI','PERISPOMENI',''],
\0x1F3F:['CAPITAL','IOTA','DASIA','PERISPOMENI',''],
\0x1F40:['SMALL','OMICRON','PSILI','',''],
\0x1F41:['SMALL','OMICRON','DASIA','',''],
\0x1F42:['SMALL','OMICRON','PSILI','VARIA',''],
\0x1F43:['SMALL','OMICRON','DASIA','VARIA',''],
\0x1F44:['SMALL','OMICRON','PSILI','OXIA',''],
\0x1F45:['SMALL','OMICRON','DASIA','OXIA',''],
\0x1F48:['CAPITAL','OMICRON','PSILI','',''],
\0x1F49:['CAPITAL','OMICRON','DASIA','',''],
\0x1F4A:['CAPITAL','OMICRON','PSILI','VARIA',''],
\0x1F4B:['CAPITAL','OMICRON','DASIA','VARIA',''],
\0x1F4C:['CAPITAL','OMICRON','PSILI','OXIA',''],
\0x1F4D:['CAPITAL','OMICRON','DASIA','OXIA',''],
\0x1F50:['SMALL','UPSILON','PSILI','',''],
\0x1F51:['SMALL','UPSILON','DASIA','',''],
\0x1F52:['SMALL','UPSILON','PSILI','VARIA',''],
\0x1F53:['SMALL','UPSILON','DASIA','VARIA',''],
\0x1F54:['SMALL','UPSILON','PSILI','OXIA',''],
\0x1F55:['SMALL','UPSILON','DASIA','OXIA',''],
\0x1F56:['SMALL','UPSILON','PSILI','PERISPOMENI',''],
\0x1F57:['SMALL','UPSILON','DASIA','PERISPOMENI',''],
\0x1F59:['CAPITAL','UPSILON','DASIA','',''],
\0x1F5B:['CAPITAL','UPSILON','DASIA','VARIA',''],
\0x1F5D:['CAPITAL','UPSILON','DASIA','OXIA',''],
\0x1F5F:['CAPITAL','UPSILON','DASIA','PERISPOMENI',''],
\0x1F60:['SMALL','OMEGA','PSILI','',''],
\0x1F61:['SMALL','OMEGA','DASIA','',''],
\0x1F62:['SMALL','OMEGA','PSILI','VARIA',''],
\0x1F63:['SMALL','OMEGA','DASIA','VARIA',''],
\0x1F64:['SMALL','OMEGA','PSILI','OXIA',''],
\0x1F65:['SMALL','OMEGA','DASIA','OXIA',''],
\0x1F66:['SMALL','OMEGA','PSILI','PERISPOMENI',''],
\0x1F67:['SMALL','OMEGA','DASIA','PERISPOMENI',''],
\0x1F68:['CAPITAL','OMEGA','PSILI','',''],
\0x1F69:['CAPITAL','OMEGA','DASIA','',''],
\0x1F6A:['CAPITAL','OMEGA','PSILI','VARIA',''],
\0x1F6B:['CAPITAL','OMEGA','DASIA','VARIA',''],
\0x1F6C:['CAPITAL','OMEGA','PSILI','OXIA',''],
\0x1F6D:['CAPITAL','OMEGA','DASIA','OXIA',''],
\0x1F6E:['CAPITAL','OMEGA','PSILI','PERISPOMENI',''],
\0x1F6F:['CAPITAL','OMEGA','DASIA','PERISPOMENI',''],
\0x1F70:['SMALL','ALPHA','','VARIA',''],
\0x1F71:['SMALL','ALPHA','','OXIA',''],
\0x1F72:['SMALL','EPSILON','','VARIA',''],
\0x1F73:['SMALL','EPSILON','','OXIA',''],
\0x1F74:['SMALL','ETA','','VARIA',''],
\0x1F75:['SMALL','ETA','','OXIA',''],
\0x1F76:['SMALL','IOTA','','VARIA',''],
\0x1F77:['SMALL','IOTA','','OXIA',''],
\0x1F78:['SMALL','OMICRON','','VARIA',''],
\0x1F79:['SMALL','OMICRON','','OXIA',''],
\0x1F7A:['SMALL','UPSILON','','VARIA',''],
\0x1F7B:['SMALL','UPSILON','','OXIA',''],
\0x1F7C:['SMALL','OMEGA','','VARIA',''],
\0x1F7D:['SMALL','OMEGA','','OXIA',''],
\0x1F80:['SMALL','ALPHA','PSILI','','YPOGEGRAMMENI'],
\0x1F81:['SMALL','ALPHA','DASIA','','YPOGEGRAMMENI'],
\0x1F82:['SMALL','ALPHA','PSILI','VARIA','YPOGEGRAMMENI'],
\0x1F83:['SMALL','ALPHA','DASIA','VARIA','YPOGEGRAMMENI'],
\0x1F84:['SMALL','ALPHA','PSILI','OXIA','YPOGEGRAMMENI'],
\0x1F85:['SMALL','ALPHA','DASIA','OXIA','YPOGEGRAMMENI'],
\0x1F86:['SMALL','ALPHA','PSILI','PERISPOMENI','YPOGEGRAMMENI'],
\0x1F87:['SMALL','ALPHA','DASIA','PERISPOMENI','YPOGEGRAMMENI'],
\0x1F88:['CAPITAL','ALPHA','PSILI','','PROSGEGRAMMENI'],
\0x1F89:['CAPITAL','ALPHA','DASIA','','PROSGEGRAMMENI'],
\0x1F8A:['CAPITAL','ALPHA','PSILI','VARIA','PROSGEGRAMMENI'],
\0x1F8B:['CAPITAL','ALPHA','DASIA','VARIA','PROSGEGRAMMENI'],
\0x1F8C:['CAPITAL','ALPHA','PSILI','OXIA','PROSGEGRAMMENI'],
\0x1F8D:['CAPITAL','ALPHA','DASIA','OXIA','PROSGEGRAMMENI'],
\0x1F8E:['CAPITAL','ALPHA','PSILI','PERISPOMENI','PROSGEGRAMMENI'],
\0x1F8F:['CAPITAL','ALPHA','DASIA','PERISPOMENI','PROSGEGRAMMENI'],
\0x1F90:['SMALL','ETA','PSILI','','YPOGEGRAMMENI'],
\0x1F91:['SMALL','ETA','DASIA','','YPOGEGRAMMENI'],
\0x1F92:['SMALL','ETA','PSILI','VARIA','YPOGEGRAMMENI'],
\0x1F93:['SMALL','ETA','DASIA','VARIA','YPOGEGRAMMENI'],
\0x1F94:['SMALL','ETA','PSILI','OXIA','YPOGEGRAMMENI'],
\0x1F95:['SMALL','ETA','DASIA','OXIA','YPOGEGRAMMENI'],
\0x1F96:['SMALL','ETA','PSILI','PERISPOMENI','YPOGEGRAMMENI'],
\0x1F97:['SMALL','ETA','DASIA','PERISPOMENI','YPOGEGRAMMENI'],
\0x1F98:['CAPITAL','ETA','PSILI','','PROSGEGRAMMENI'],
\0x1F99:['CAPITAL','ETA','DASIA','','PROSGEGRAMMENI'],
\0x1F9A:['CAPITAL','ETA','PSILI','VARIA','PROSGEGRAMMENI'],
\0x1F9B:['CAPITAL','ETA','DASIA','VARIA','PROSGEGRAMMENI'],
\0x1F9C:['CAPITAL','ETA','PSILI','OXIA','PROSGEGRAMMENI'],
\0x1F9D:['CAPITAL','ETA','DASIA','OXIA','PROSGEGRAMMENI'],
\0x1F9E:['CAPITAL','ETA','PSILI','PERISPOMENI','PROSGEGRAMMENI'],
\0x1F9F:['CAPITAL','ETA','DASIA','PERISPOMENI','PROSGEGRAMMENI'],
\0x1FA0:['SMALL','OMEGA','PSILI','','YPOGEGRAMMENI'],
\0x1FA1:['SMALL','OMEGA','DASIA','','YPOGEGRAMMENI'],
\0x1FA2:['SMALL','OMEGA','PSILI','VARIA','YPOGEGRAMMENI'],
\0x1FA3:['SMALL','OMEGA','DASIA','VARIA','YPOGEGRAMMENI'],
\0x1FA4:['SMALL','OMEGA','PSILI','OXIA','YPOGEGRAMMENI'],
\0x1FA5:['SMALL','OMEGA','DASIA','OXIA','YPOGEGRAMMENI'],
\0x1FA6:['SMALL','OMEGA','PSILI','PERISPOMENI','YPOGEGRAMMENI'],
\0x1FA7:['SMALL','OMEGA','DASIA','PERISPOMENI','YPOGEGRAMMENI'],
\0x1FA8:['CAPITAL','OMEGA','PSILI','','PROSGEGRAMMENI'],
\0x1FA9:['CAPITAL','OMEGA','DASIA','','PROSGEGRAMMENI'],
\0x1FAA:['CAPITAL','OMEGA','PSILI','VARIA','PROSGEGRAMMENI'],
\0x1FAB:['CAPITAL','OMEGA','DASIA','VARIA','PROSGEGRAMMENI'],
\0x1FAC:['CAPITAL','OMEGA','PSILI','OXIA','PROSGEGRAMMENI'],
\0x1FAD:['CAPITAL','OMEGA','DASIA','OXIA','PROSGEGRAMMENI'],
\0x1FAE:['CAPITAL','OMEGA','PSILI','PERISPOMENI','PROSGEGRAMMENI'],
\0x1FAF:['CAPITAL','OMEGA','DASIA','PERISPOMENI','PROSGEGRAMMENI'],
\0x1FB0:['SMALL','ALPHA','','VRACHY',''],
\0x1FB1:['SMALL','ALPHA','','MACRON',''],
\0x1FB2:['SMALL','ALPHA','','VARIA','YPOGEGRAMMENI'],
\0x1FB3:['SMALL','ALPHA','','','YPOGEGRAMMENI'],
\0x1FB4:['SMALL','ALPHA','','OXIA','YPOGEGRAMMENI'],
\0x1FB6:['SMALL','ALPHA','','PERISPOMENI',''],
\0x1FB7:['SMALL','ALPHA','','PERISPOMENI','YPOGEGRAMMENI'],
\0x1FB8:['CAPITAL','ALPHA','','VRACHY',''],
\0x1FB9:['CAPITAL','ALPHA','','MACRON',''],
\0x1FBA:['CAPITAL','ALPHA','','VARIA',''],
\0x1FBB:['CAPITAL','ALPHA','','OXIA',''],
\0x1FBC:['CAPITAL','ALPHA','','','PROSGEGRAMMENI'],
\0x1FC2:['SMALL','ETA','','VARIA','YPOGEGRAMMENI'],
\0x1FC3:['SMALL','ETA','','','YPOGEGRAMMENI'],
\0x1FC4:['SMALL','ETA','','OXIA','YPOGEGRAMMENI'],
\0x1FC6:['SMALL','ETA','','PERISPOMENI',''],
\0x1FC7:['SMALL','ETA','','PERISPOMENI','YPOGEGRAMMENI'],
\0x1FC8:['CAPITAL','EPSILON','','VARIA',''],
\0x1FC9:['CAPITAL','EPSILON','','OXIA',''],
\0x1FCA:['CAPITAL','ETA','','VARIA',''],
\0x1FCB:['CAPITAL','ETA','','OXIA',''],
\0x1FCC:['CAPITAL','ETA','','','PROSGEGRAMMENI'],
\0x1FD0:['SMALL','IOTA','','VRACHY',''],
\0x1FD1:['SMALL','IOTA','','MACRON',''],
\0x1FD2:['SMALL','IOTA','DIALYTIKA','VARIA',''],
\0x1FD3:['SMALL','IOTA','DIALYTIKA','OXIA',''],
\0x1FD6:['SMALL','IOTA','','PERISPOMENI',''],
\0x1FD7:['SMALL','IOTA','DIALYTIKA','PERISPOMENI',''],
\0x1FD8:['CAPITAL','IOTA','','VRACHY',''],
\0x1FD9:['CAPITAL','IOTA','','MACRON',''],
\0x1FDA:['CAPITAL','IOTA','','VARIA',''],
\0x1FDB:['CAPITAL','IOTA','','OXIA',''],
\0x1FE0:['SMALL','UPSILON','','VRACHY',''],
\0x1FE1:['SMALL','UPSILON','','MACRON',''],
\0x1FE2:['SMALL','UPSILON','DIALYTIKA','VARIA',''],
\0x1FE3:['SMALL','UPSILON','DIALYTIKA','OXIA',''],
\0x1FE4:['SMALL','RHO','PSILI','',''],
\0x1FE5:['SMALL','RHO','DASIA','',''],
\0x1FE6:['SMALL','UPSILON','','PERISPOMENI',''],
\0x1FE7:['SMALL','UPSILON','DIALYTIKA','PERISPOMENI',''],
\0x1FE8:['CAPITAL','UPSILON','','VRACHY',''],
\0x1FE9:['CAPITAL','UPSILON','','MACRON',''],
\0x1FEA:['CAPITAL','UPSILON','','VARIA',''],
\0x1FEB:['CAPITAL','UPSILON','','OXIA',''],
\0x1FEC:['CAPITAL','RHO','DASIA','',''],
\0x1FF2:['SMALL','OMEGA','','VARIA','YPOGEGRAMMENI'],
\0x1FF3:['SMALL','OMEGA','','','YPOGEGRAMMENI'],
\0x1FF4:['SMALL','OMEGA','','OXIA','YPOGEGRAMMENI'],
\0x1FF6:['SMALL','OMEGA','','PERISPOMENI',''],
\0x1FF7:['SMALL','OMEGA','','PERISPOMENI','YPOGEGRAMMENI'],
\0x1FF8:['CAPITAL','OMICRON','','VARIA',''],
\0x1FF9:['CAPITAL','OMICRON','','OXIA',''],
\0x1FFA:['CAPITAL','OMEGA','','VARIA',''],
\0x1FFB:['CAPITAL','OMEGA','','OXIA',''],
\0x1FFC:['CAPITAL','OMEGA','','','PROSGEGRAMMENI'],
\0x20:['','','','',''],
\0x37A:['','','','','YPOGEGRAMMENI'],
\0xFBE:['','','','','PROSGEGRAMMENI'],
\0x1FC1:['','','DIALYTIKA','PERISPOMENI',''],
\0x1FCD:['','','PSILI','VARIA',''],
\0x1FCE:['','','PSILI','OXIA',''],
\0x1FCF:['','','PSILI','PERISPOMENI',''],
\0x1FDD:['','','DASIA','VARIA',''],
\0x1FDE:['','','DASIA','OXIA',''],
\0x1FDF:['','','DASIA','PERISPOMENI',''],
\0x1FED:['','','DIALYTIKA','VARIA',''],
\0x1FEE:['','','DIALYTIKA','OXIA',''],
\0x1FEF:['','','','VARIA',''],
\0x1FFD:['','','','OXIA',''],
\0x1FC0:['','','','PERISPOMENI',''],
\0x1FBF:['','','PSILI','',''],
\0x1FFE:['','','DASIA','',''],
\0x00A8:['','','DIALYTIKA','',''],
\}
"-----------------------------------------------------------------------------
" We load the greek_iso keymap so we can type the basic greek letters.
" Note: Those who are accustomed to the dead keys of the monotonic Greek
" may continue to use them.
" 
source  $VIMRUNTIME/keymap/greek_iso-8859-7.vim
"
" Change this if placed in vim keymaps directory
" source /usr/share/vim/vim72/keymap/greek_iso-8859-7.vim
" or even better:
" source <sfile>:p:h/greek_iso-8859-7.vim
"
"
"-----------------------------------------------------------------------------
" This function is called every time an accent key is pressed.
" If the preceding character can take the accent then it deletes it and 
" replaces it with the accented version of the same character (if such a
" character exists in the table above)
"
function! Put_accent(char, accent_char)
  let char_code = char2nr(a:char)
  let accent_char = a:accent_char
  let grk_ucs_table = g:grk_ucs_table
  let out_char = a:char           " return this if nothing is found
  let accents={
  \             '/':['OXIA',3],
  \             '\':['VARIA',3],
  \             '=':['PERISPOMENI',3],
  \             '~':['PERISPOMENI',3],
  \             ']':['PSILI',2],
  \             '[':['DASIA',2],
  \             '"':['DIALYTIKA',2],
  \             '|':['YPOGEGRAMMENI',4],
  \             '-':['MACRON',3],
  \             '^':['VRACHY',3]
  \             }
  if has_key(accents, accent_char)
    let [accent, pos] = accents[accent_char]
    if has_key(grk_ucs_table, char_code)
      let attrib = deepcopy(grk_ucs_table[char_code])
      if (attrib[0] == 'CAPITAL') && (accent == 'YPOGEGRAMMENI')
        let accent = 'PROSGEGRAMMENI'
      endif
      let attrib[pos] = accent
      for [key, value] in items(grk_ucs_table)
        if attrib == value
          let out_char = nr2char(key)    " return new accented char
          break
        endif
      endfor
    endif   " if accent exists in table
  endif   " if existing accented character is found
  :echo out_char
  return out_char
endfunction
"-----------------------------------------------------------------------------
let b:keymap_name = "greek_polytonic"
loadkeymap
"-----------------------------------------------------------------------------
" Accents and breathings
"-----------------------------------------------------------------------------
/ <Esc>yli<C-R>=Put_accent(@@,'/')<CR><Del>      " OXIA
\\ <Esc>yli<C-R>=Put_accent(@@,'\\')<CR><Del>    " VARIA (need escape)
= <Esc>yli<C-R>=Put_accent(@@,'=')<CR><Del>      " PERISPOMENI
~ <Esc>yli<C-R>=Put_accent(@@,'~')<CR><Del>      " PERISPOMENI (altenative)
] <Esc>yli<C-R>=Put_accent(@@,']')<CR><Del>      " PSILI
[ <Esc>yli<C-R>=Put_accent(@@,'[')<CR><Del>      " DASIA
\" <Esc>yli<C-R>=Put_accent(@@,'"')<CR><Del>     " DIALYTIKA
| <Esc>yli<C-R>=Put_accent(@@,'|')<CR><Del>      " YPOGEGRAMMENI
- <Esc>yli<C-R>=Put_accent(@@,'-')<CR><Del>      " MACRON
^ <Esc>yli<C-R>=Put_accent(@@,'^')<CR><Del>      " BRAXY
"-----------------------------------------------------------------------------
"  Punctuations and special characters.
"-----------------------------------------------------------------------------
.1  <char-0x0387>  " ANO TELEIA
.2  :              " COLON (ANO - KATO TELEIA)
E$	<char-0x20AC>  " EURO SIGN (Latin input)
Ε$	<char-0x20AC>  " EURO SIGN (Greek input)
>>	<char-0x00BB>  " RIGHT-POINTING QUOTATION MARK 
;>	<char-0x00BB>  " EISAGOGIKA/OMOIOMATIKA 
<<	<char-0x00AB>  " LEFT-POINTING QUOTATION MARK 
;<	<char-0x00AB>  " EISAGOGIKA 
;.	<char-0x0387>  " ANO TELEIA (Latin input)
W	  <char-0x0387>  " ANO TELEIA (Latin input)
'	  <char-0x1FBD>  " APOSTROFOS
--	<char-0x2013>	 " endash
---	<char-0x2014>	 " emdash
##	<char-0x0374>  " ANO TONOS (Keraia)
###	<char-0x0375>  " KATO TONOS (low Keraia)
&&	<char-0x03D7>  " Abbreviated kai
#στ	<char-0x03DA>  " STIGMA
#φ	<char-0x03DC>  " DIGAMMA
#κ	<char-0x03DE>  " KOPPA
#σα	<char-0x03E0>  " SAMPI
#ΚΟ	<char-0x03D8>  " Archaic Qoppa (Capital)
#κο	<char-0x03D9>  " Archaic qoppa
"-----------------------------------------------------------------------------
