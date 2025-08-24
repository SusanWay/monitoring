[server]
# Подставим из .env
root_url = ${PUBLIC_ORIGIN}/metrics/
serve_from_sub_path = true

[security]
admin_user = ${GF_SECURITY_ADMIN_USER}
admin_password = ${GF_SECURITY_ADMIN_PASSWORD}

[log]
mode = console