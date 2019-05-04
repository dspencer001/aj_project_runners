#!/bin/bash
if pg_ctl status | grep 'no server running'
then
    pg_ctl start -l ~/projects/runners/pg.log
fi

xfce4-terminal -T Catalyst \
--working-directory /home/atomicjolt/projects/catalyst \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s mix\ all; mix all" bash' \
--tab -T elasticsearch \
--working-directory /home/atomicjolt/projects/catalyst \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s elasticsearch; elasticsearch" bash' \
