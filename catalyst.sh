#!/bin/bash
/home/atomicjolt/projects/runners/pg.sh

xfce4-terminal -T Catalyst \
--working-directory /home/atomicjolt/projects/catalyst \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s mix\ all; mix all" bash' \
--tab -T elasticsearch \
--working-directory /home/atomicjolt/projects/catalyst \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s elasticsearch; elasticsearch" bash' \
