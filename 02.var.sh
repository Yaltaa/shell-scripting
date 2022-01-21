#!/bin/bash
student_name='ravan'

echo student_name = $student_name
echo student_name = ${student_name}

student_status='present'

housenumber=255/5
echo this is my housenumber = $housenumber
echo this is my beautiful housenumber =${housenumber}

## command subtitution
date=$(date +%F)

echo this is today date = $date
echo today date = ${date}

###Arthmetic substitution

EXPR1=$((2+3-5*8/6*3))

echo the expresssion = $EXPR1
echo the expression = ${EXPR1}

#######Local##########
echo course name = $coursename