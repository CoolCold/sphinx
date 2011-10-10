
# Rebuild all indexes daily and notify searchd.
@daily      root . /etc/default/sphinxsearch && if [ "$START" = "yes" ] && [ -x /usr/bin/indexer ]; then /usr/bin/indexer --quiet --rotate --all; fi

# Example for rotating only specific indexes (usually these would be part of
# a larger combined index).

# */5 * * * * root [ -x /usr/bin/indexer ] && /usr/bin/indexer --quiet --rotate postdelta threaddelta

