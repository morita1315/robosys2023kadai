#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Atsuya Morita
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo NG at Line $1
    res=1
}

res=0

out=$(echo -e "5\n10\n15\n20" | ./plus)
[ "${out}" = 50 ] || ng ${LINENO}

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo あ | ./plus 2>&1)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Invalid input: not a number" ] || ng ${LINENO}

out=$(echo | ./plus 2>&1)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Invalid input: not a number" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

