#!/bin/sh
cd /usr/share/nginx/html/app && ./import-meta-env --example .env.example
exec nginx -g "daemon off;"