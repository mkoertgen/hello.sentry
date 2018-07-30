#!//bin/sh -ex

sentry upgrade --noinput
sentry createuser --email ${SENTRY_ADMIN_EMAIL} --password ${SENTRY_ADMIN_PASS} --superuser > /dev/null 2>&1 || true
sentry run web