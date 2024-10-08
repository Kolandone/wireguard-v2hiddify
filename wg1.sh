#!/data/data/com.termux/files/usr/bin/bash
#
# Encrypted by Rangga Fajar Oktariansyah (Anak Gabut Thea)
#
# This file has been encrypted with BZip2 Shell Exec <https://github.com/FajarKim/bz2-shell>
# The filename 'wg1.sh' encrypted at Fri Sep  6 23:23:30 +0330 2024
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
BZh91AY&SY<-� �_�WP~������.����`�)�P����� p��h��&�G���d�2i�h�z� ȦD��?T�R���@  �h   �44���@@1# DE2�i�=�hzCjd6�F��@ 1 4h���M d41 h�h`��	5=j`T�D��H�OI�6��� S�6�ŨV�I\�,�,�.�e�R򧵃�]Z/�(clmb!����Y6��,M�M��v���R&%��`��)�ԌpYX���l�n�3!T�?y����@�i1j �A���d7�B"7�A(-bLc6/�z�@��Î�o��8Z��,(8ӧY���z6�E��z�_S]ٽR��`�2V!���ܵ]?���4\�s�$"�e��9�)`(�W1�ǿ	^Y�&��Sd�*Rϸ������{ ���9��й��>���t�|84dk���Z�����m6��{�,&�X��Lţ4��-ZZ%���̘��@ڥZy�{��F�bmƒ#Q:/�a�Q�ȋ�ԍ��Ь�6��"-f���4�ɨ �@{\Ҙ\�&�$t�2�1*&۔ƕfGHtS!��
�h��#u"���>���y~i>��m���	��A�T�gx՝���m��Tb�d�� ���H�\�4��ŉ�C�����Y���\�|pw��#��65Q�4�Z���5�)�X�by���ퟙ:�>�=~��ٴ�z��SZK��_�-4�?�+{��:	tr�}��D��$��Aη�B���Q{G�ŏ�+w�4)�aSF��Q]�Ԗ��� ��/L��PB`-�s*=3�>����+t�6�A�w���LGpK�jL�3��W����A���`��@�UG��_#�hT·�&��I��qu0�M��0Hf�����i�����l�V������p�8x��H<��1�����3x�b��UEY}��:�ӯe�Y q�Ŗ	{�%|q+ؑ����Q�D%�t8�il�,E��2�D���B���$5
B�	���CBb�f=]
���*0u��
���Ȅ1�_�>҇2/���kQo�(`����h�_e�*���ud�SC.-���5�).�!�`�<Lqh͚֮�*J��+�yF�0���z�/������xb�Mj�)`SȒ������Ų��g;����q0���'bOݤ�1Vo��Uz�B�����l^*i]@�S]ӆ�5r�:��'U�t$�$�L�^n��W�KjC�};����W4#�[ަ^І?O�A^Y�?7I�s���.���7��L6�g)�u�M�$��I6�X��p�h��=������|�ZJҪ�W~�%]�^\�xaC5�K�8�H,�6[X��s[�cJ���D��Pq���o�|C�/G�_9�~
Y�<���� �3�kB�l ���

O�#;����Af���u�A�������i��z��+>p�/�zx�A�bS�P���mS�E����� 81���2�9da{@�8"TS����b]�0A���vt�b��W�B���|�4��}l9F�����L��R��/J�x*�4����1%0
���=ѻZ�h�^��_�,�=�qЕ7��W�52&D����)و|<����Rbb����z���9KHo����q��T&���6Җ��H�}��x��L�Kv�ə5��J�W��B��!<6���:*r�B��KUf��b����Q�_a��;�\-y �"�bּEkh��7�$^MuOM��O7^���d_���B,A9�L�Z&
��\�( ��V
����]Q�� S�h!�S��,�O�,6�=��F5���1�R*�,M�Z�4�w���-"٘�ۄH3,�7�I�_Y��0�}�o�{Rgɉ��/*�� �VH8Z��^/(0�E� 40_C�.�p� x[�