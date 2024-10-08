#!/data/data/com.termux/files/usr/bin/bash
#
# Encrypted by Rangga Fajar Oktariansyah (Anak Gabut Thea)
#
# This file has been encrypted with BZip2 Shell Exec <https://github.com/FajarKim/bz2-shell>
# The filename 'wg.sh' encrypted at Fri Sep  6 23:21:34 +0330 2024
# I try invoking the compressed executable with the original name
# (for programs looking at their name).  We also try to retain the original
# file permissions on the compressed file.  For safety reasons, bzsh will
# not create setuid or setgid shell scripts.
#
# WARNING: the first line of this file must be either : or #!/bin/bash
# The : is required for some old versions of csh.
# On Ultrix, /bin/bash is too buggy, change the first line to: #!/bin/bash5
#
# Don't forget to follow me on <https://github.com/FajarKim>
skip=76
set -e

tab='	'
nl='
'
IFS=" $tab$nl"

# Make sure important variables exist if not already defined
# $USER is defined by login(1) which is not always executed (e.g. containers)
# POSIX: https://pubs.opengroup.org/onlinepubs/009695299/utilities/id.html
USER=${USER:-$(id -u -n)}
# $HOME is defined at the time of login, but it could be unset. If it is unset,
# a tilde by itself (~) will not be expanded to the current user's home directory.
# POSIX: https://pubs.opengroup.org/onlinepubs/009696899/basedefs/xbd_chap08.html#tag_08_03
HOME="${HOME:-$(getent passwd $USER 2>/dev/null | cut -d: -f6)}"
# macOS does not have getent, but this works even if $HOME is unset
HOME="${HOME:-$(eval echo ~$USER)}"
umask=`umask`
umask 77

bztmpdir=
trap 'res=$?
  test -n "$bztmpdir" && rm -fr "$bztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | */tmp/) test -d "$TMPDIR" && test -w "$TMPDIR" && test -x "$TMPDIR" || TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
  */tmp) TMPDIR=$TMPDIR/; test -d "$TMPDIR" && test -w "$TMPDIR" && test -x "$TMPDIR" || TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
  *:* | *) TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
esac
if type mktemp >/dev/null 2>&1; then
  bztmpdir=`mktemp -d "${TMPDIR}bztmpXXXXXXXXX"`
else
  bztmpdir=${TMPDIR}bztmp$$; mkdir $bztmpdir
fi || { (exit 127); exit 127; }

bztmp=$bztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$bztmp" && rm -r "$bztmp";;
*/*) bztmp=$bztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | bzip2 -cd > "$bztmp"; then
  umask $umask
  chmod 700 "$bztmp"
  (sleep 5; rm -fr "$bztmpdir") 2>/dev/null &
  "$bztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress ${0##*/}"
  printf >&2 '%s\n' "Report bugs to <fajarrkim@gmail.com>."
  (exit 127); res=127
fi; exit $res
BZh91AY&SY�9�� �_�V~�����������`=� �L 
R)�  h�  �@  �A�CM@�h`�2h�� �4ha!��44ɣ@2@ h$Q'�22L2�M=OQ�T~���yC26��Q� A�CM@�h`�2h�� 	&��Bd#LJ~��L45I�6��?SSѦ����5����6dsJ��m�a�F*G��F$$J�S�9�Z�a{S;�!��	�fB�DX	�#�b���(�"r��Z�=v��{����ohm�����d���rE��+�,�׀�>K�j¢$,<^J��f�Y{5]7�X�V){�܄�ýt�p��%I�����2�������V�հ�0�M��0Xb�A��#�'�<�
qfѕ���]�Z��I��T�,y��6$�V+���T��� Q�V[ :8[ސ�/)�y�1L�H�-o|5Y�d�wW�΃qi��Y�ف���l$_c�� �W%��J�/��u߸�S\��G(�D£���T��6�������(�g����x0�Q���"I-���7��*#o�
�2fQ� EU��TP�NC%K*ƥE*����G��+�����,�3�̠(*"���Vc~՞쁡�5��8@��Y�p�=f�A�`��_�@"i�+�:�s%�7iWJ�)�=��ｵ�`�~pz>Ӯ&e�rj����u��yfoF�fe>1?R�s�~��Z�y�]t�ç�xm�,��ֲO�!x�7���HEc���eZf�RDƽ���}V����t��h��>U�đH��1����P³�e�N� AO�a���:#���f���bu2)����E�`�8�X��U�TW0�'��Y�����:ׯ֔���"50�'o����	�Y�b�~�`c����T�.�!m�ǳ⋋��L��IK��^�e1a~�4��c��0hi�ɽկ�h`e�Q+&�{��#L�E#d��q�'L/h��#����E�]F̓`|�n�S��Հ~�ˏPy�p�:z���l���J�0�bbE�[Ky�t��/�F���g)����f��)۾�KJ��0��K�*K���ſ  ���#��Y��1s����]QC|$s��1��ָ�D�Fm�ZU�*7�O
����4������H5
������%u|\?�h��%G7l�I�}vK�'O��8��˾U,���3��`c�r���Pq�#�F��7�ˆh������IH`�~�.�1�H���+���[J��n��d@.��Dņ^��=�͉b̳؋K�Axê��(&TO�d�+�-�2@���O� ,N뎤���tKX~�1
�񬂽�VA�v�)4��A?��PnF��Q�+�ѡ�"�Q�&j�J�E�Fj�@���;Xň��b�� ]n�B8��26�ۉr�-.e�)�AK���B4`��-�p3����iL�fy���lghh	�T*}&B�E��U����)�A�^�