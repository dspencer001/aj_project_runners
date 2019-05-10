#!/bin/bash
if pg_ctl status | grep 'no server running'
then
    pg_ctl start -l ~/projects/runners/pg.log
fi

