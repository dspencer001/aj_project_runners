#!/bin/bash
/home/atomicjolt/projects/runners/pg.sh

xfce4-terminal -T rails \
--working-directory /home/atomicjolt/projects/sloan_canvas_integration \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s bundle\ exec\ rails\ s; bundle exec rails s" bash' \
--tab -T que \
--working-directory /home/atomicjolt/projects/sloan_canvas_integration/ \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s bundle\ exec\ que\ ./config/environment.rb -w1; bundle exec que ./config/environment.rb -w1" bash' \
--tab -T yarn \
--working-directory /home/atomicjolt/projects/sloan_canvas_integration/ \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s yarn\ hot; yarn hot" bash' \
--tab -T log \
--working-directory /home/atomicjolt/projects/sloan_canvas_integration/ \
-e 'env PROMPT_COMMAND="unset PROMPT_COMMAND; history -s tail\ -f log/development.log; tail -f log/development.log" bash'
