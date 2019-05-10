#!/bin/bash
/home/atomicjolt/projects/runners/pg.sh

xfce4-terminal -T rails \
--working-directory /home/atomicjolt/projects/socialize \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s bundle\ exec\ rails\ s\ -p3060; bundle exec rails s -p3060" bash' \
--tab -T que \
--working-directory /home/atomicjolt/projects/socialize/ \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s bundle\ exec\ que\ ./config/environment.rb -w1; bundle exec que ./config/environment.rb -w1" bash' \
--tab -T yarn \
--working-directory /home/atomicjolt/projects/socialize/ \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s yarn\ hot; yarn hot" bash' \
--tab -T log \
--working-directory /home/atomicjolt/projects/socialize/ \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s tail\ -f log/development.log; tail -f log/development.log" bash'
