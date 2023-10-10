export LIB_CURL=/usr/local/src/curl/build
export LIB_UTHASH=/usr/local/src/uthash
export LIB_MODSECURITY=/usr/local/modsecurity
OPENSSL_ROOT="/data/apps/nginx/party_modules/openssl-1.1.1a"
OPENSSL_LIB="${OPENSSL_ROOT}/.openssl"

./configure --prefix=/data/apps/nginx --with-cc-opt='-std=gnu99' --user=nginx --group=nginx --with-http_flv_module --with-http_sub_module --with-http_stub_status_module --with-http_gzip_static_module --with-http_realip_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_auth_request_module --with-http_random_index_module \
  --with-http_secure_link_module \
  --with-http_degradation_module \
  --with-http_slice_module \
  --with-http_ssl_module \
  --with-http_v2_module \
  --with-http_realip_module \
  --with-http_addition_module \
  --with-http_lua_module \
  --with-http_ssl_module \
  --with-http_secure_link_module \
  --with-select_module \
  --without-select_module \
  --with-poll_module \
  --without-poll_module \
  --without-procs \
  --with-threads \
  --with-file-aio \
  --with-pcre \
  --with-threads \
  --with-jemalloc \
  --with-stream \
  --with-stream_ssl_module \
  --with-stream_realip_module \
  --with-stream_ssl_preread_module \
  --with-stream_sni \
  --without-http_upstream_keepalive_module \
  --with-openssl="${OPENSSL_ROOT}" \
  --add-module=/data/apps/nginx/party_modules/ngx_brotli \
  --add-module=/data/apps/nginx/party_modules/ngx_http_concat_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_trim_filter_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_footer_filter_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_check_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_dynamic_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_vnswrr_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_dyups_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_keepalive_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_session_sticky_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_upstream_consistent_hash_module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_user_agent_module \
  --add-module=/data/apps/nginx/party_modules/ngx_multi_upstream_module \
  --add-module=/data/apps/nginx/party_modules/ngx_backtrace_module \
  --add-module=/data/apps/nginx/party_modules/ngx_slab_stat \
  --add-module=/data/apps/nginx/party_modules/ngx_cache_purge-2.3 \
  --add-module=/data/apps/nginx/party_modules/echo-nginx-module \
  --add-module=/data/apps/nginx/party_modules/ngx_http_geoip2_module-3.4 \
  --add-module=/data/apps/nginx/party_modules/nginx-module-vts-0.1.18 \
  --add-module=/data/apps/nginx/party_modules/ngx_waf-10.1.2 \
  --with-debug