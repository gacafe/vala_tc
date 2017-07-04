#!/bin/zsh

### Caches input and program executed against

set -e

if [ ! "$1" ]
then
  echo "Usage: input | cache program [args...]" 1>&2
  exit 1
fi

pf=/tmp/vala_workshop

tf=$pf.$$.tmp

cat > $tf

md=`(echo $@; cat $tf) | md5`

cf=$pf.$md.cache

if [[ -f $cf ]]
then
  cat $cf
else
  cat $tf | $@ | tee $cf
fi

rm $tf
