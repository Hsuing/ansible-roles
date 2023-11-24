# 查看erlang 和 rabbitmq之间版本关系
https://www.rabbitmq.com/which-erlang.html

> 注意点：
```bash
1. 需要保证.erlang.cookie的默认权限为：400;
2. 所有用户和组为 rabbitmq

chmod 400 /var/lib/rabbitmq/.erlang.cookie
chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie

```