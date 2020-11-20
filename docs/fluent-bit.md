## [What is Fluent Bit ?](https://docs.fluentbit.io/manual/about/what-is-fluent-bit)

Fluent Bit 是 Fluentd 旗下的 CNCF 子项目。

Fluent Bit 是一个开源、多平台的日志处理器工具，旨在成为日志处理和分发的通用"瑞士军刀"。

如今，我们环境中的信息源数量正在不断增加。大规模处理数据收集非常复杂，并且收集和汇总各种数据需要一种专门的工具，该工具可以处理：

- 不同的信息来源
- 不同的数据格式
- 数据可靠性
- 安全性
- 灵活的路由
- 输出到多个目的地

Fluent Bit 在设计时考虑了性能和低资源消耗。

## [Key Concepts](https://docs.fluentbit.io/manual/concepts/key-concepts)

- Event or Record
- Filtering
- Tag
- Timestamp
- Match
- Structured Message

## Getting Started

- https://hub.docker.com/r/fluent/fluent-bit
- https://docs.fluentbit.io/manual/

1. 拉取 `fluent-bit` 镜像

```
docker pull fluent/fluent-bit:1.6
```

2. 执行下面命令使用 fluent-bit 测量容器的 cpu 的使用情况，该命令将使 fluent-bit 每秒测量一次 CPU 使用率并将结果输出到控制台中。

```
docker run -it --rm fluent/fluent-bit:1.6 /fluent-bit/bin/fluent-bit -i cpu -o stdout -f 1
```

- `-i` 表示 input
- `-o` 表示 output
- `-f` 表示 flush

![](https://gblobscdn.gitbook.com/assets%2F-LKKSx-3LBTCtaHbg0gl%2F-LKKTm4Y55lytnFhqfG1%2F-LKKTwUrRtRcGfkhN7YV%2Flogging_pipeline_input.png?alt=media)

```log
(base) ➜  ~ docker run -it --rm fluent/fluent-bit:1.6 /fluent-bit/bin/fluent-bit -i cpu -o stdout -f 1
Fluent Bit v1.6.4
* Copyright (C) 2019-2020 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2020/11/19 02:57:53] [ info] [engine] started (pid=1)
[2020/11/19 02:57:53] [ info] [storage] version=1.0.6, initializing...
[2020/11/19 02:57:53] [ info] [storage] in-memory
[2020/11/19 02:57:53] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2020/11/19 02:57:53] [ info] [sp] stream processor started
[0] cpu.0: [1605754673.398261800, {"cpu_p"=>0.333333, "user_p"=>0.000000, "system_p"=>0.333333, "cpu0.p_cpu"=>0.000000, "cpu0.p_user"=>0.000000, "cpu0.p_system"=>0.000000, "cpu1.p_cpu"=>0.000000, "cpu1.p_user"=>0.000000, "cpu1.p_system"=>0.000000, "cpu2.p_cpu"=>2.000000, "cpu2.p_user"=>1.000000, "cpu2.p_system"=>1.000000, "cpu3.p_cpu"=>0.000000, "cpu3.p_user"=>0.000000, "cpu3.p_system"=>0.000000, "cpu4.p_cpu"=>0.000000, "cpu4.p_user"=>0.000000, "cpu4.p_system"=>0.000000, "cpu5.p_cpu"=>1.000000, "cpu5.p_user"=>0.000000, "cpu5.p_system"=>1.000000}]
[0] cpu.0: [1605754674.398547600, {"cpu_p"=>7.500000, "user_p"=>3.000000, "system_p"=>4.500000, "cpu0.p_cpu"=>11.000000, "cpu0.p_user"=>5.000000, "cpu0.p_system"=>6.000000, "cpu1.p_cpu"=>5.000000, "cpu1.p_user"=>2.000000, "cpu1.p_system"=>3.000000, "cpu2.p_cpu"=>8.000000, "cpu2.p_user"=>2.000000, "cpu2.p_system"=>6.000000, "cpu3.p_cpu"=>5.000000, "cpu3.p_user"=>2.000000, "cpu3.p_system"=>3.000000, "cpu4.p_cpu"=>7.000000, "cpu4.p_user"=>2.000000, "cpu4.p_system"=>5.000000, "cpu5.p_cpu"=>9.000000, "cpu5.p_user"=>4.000000, "cpu5.p_system"=>5.000000}]
[0] cpu.0: [1605754675.364857000, {"cpu_p"=>11.500000, "user_p"=>5.000000, "system_p"=>6.500000, "cpu0.p_cpu"=>11.000000, "cpu0.p_user"=>5.000000, "cpu0.p_system"=>6.000000, "cpu1.p_cpu"=>7.000000, "cpu1.p_user"=>3.000000, "cpu1.p_system"=>4.000000, "cpu2.p_cpu"=>21.000000, "cpu2.p_user"=>12.000000, "cpu2.p_system"=>9.000000, "cpu3.p_cpu"=>5.000000, "cpu3.p_user"=>1.000000, "cpu3.p_system"=>4.000000, "cpu4.p_cpu"=>14.000000, "cpu4.p_user"=>5.000000, "cpu4.p_system"=>9.000000, "cpu5.p_cpu"=>10.000000, "cpu5.p_user"=>3.000000, "cpu5.p_system"=>7.000000}]
[0] cpu.0: [1605754676.364915800, {"cpu_p"=>6.833333, "user_p"=>2.333333, "system_p"=>4.500000, "cpu0.p_cpu"=>8.000000, "cpu0.p_user"=>4.000000, "cpu0.p_system"=>4.000000, "cpu1.p_cpu"=>5.000000, "cpu1.p_user"=>1.000000, "cpu1.p_system"=>4.000000, "cpu2.p_cpu"=>7.000000, "cpu2.p_user"=>2.000000, "cpu2.p_system"=>5.000000, "cpu3.p_cpu"=>6.000000, "cpu3.p_user"=>3.000000, "cpu3.p_system"=>3.000000, "cpu4.p_cpu"=>8.000000, "cpu4.p_user"=>2.000000, "cpu4.p_system"=>6.000000, "cpu5.p_cpu"=>8.000000, "cpu5.p_user"=>3.000000, "cpu5.p_system"=>5.000000}]
[0] cpu.0: [1605754677.364629700, {"cpu_p"=>8.833333, "user_p"=>3.333333, "system_p"=>5.500000, "cpu0.p_cpu"=>8.000000, "cpu0.p_user"=>3.000000, "cpu0.p_system"=>5.000000, "cpu1.p_cpu"=>7.000000, "cpu1.p_user"=>3.000000, "cpu1.p_system"=>4.000000, "cpu2.p_cpu"=>12.000000, "cpu2.p_user"=>5.000000, "cpu2.p_system"=>7.000000, "cpu3.p_cpu"=>8.000000, "cpu3.p_user"=>3.000000, "cpu3.p_system"=>5.000000, "cpu4.p_cpu"=>8.000000, "cpu4.p_user"=>2.000000, "cpu4.p_system"=>6.000000, "cpu5.p_cpu"=>9.000000, "cpu5.p_user"=>3.000000, "cpu5.p_system"=>6.000000}]
^C[2020/11/19 02:57:59] [engine] caught signal (SIGINT)
[2020/11/19 02:57:59] [ info] [input] pausing cpu.0
[0] cpu.0: [1605754678.364885100, {"cpu_p"=>7.666667, "user_p"=>2.333333, "system_p"=>5.333333, "cpu0.p_cpu"=>8.000000, "cpu0.p_user"=>3.000000, "cpu0.p_system"=>5.000000, "cpu1.p_cpu"=>6.000000, "cpu1.p_user"=>1.000000, "cpu1.p_system"=>5.000000, "cpu2.p_cpu"=>10.000000, "cpu2.p_user"=>3.000000, "cpu2.p_system"=>7.000000, "cpu3.p_cpu"=>5.000000, "cpu3.p_user"=>2.000000, "cpu3.p_system"=>3.000000, "cpu4.p_cpu"=>8.000000, "cpu4.p_user"=>3.000000, "cpu4.p_system"=>5.000000, "cpu5.p_cpu"=>9.000000, "cpu5.p_user"=>2.000000, "cpu5.p_system"=>7.000000}]
[2020/11/19 02:57:59] [ warn] [engine] service will stop in 5 seconds
[2020/11/19 02:58:03] [ info] [engine] service stopped
```

查看更多帮助：

```
docker run -it --rm fluent/fluent-bit:1.6 /fluent-bit/bin/fluent-bit -h
```

## Inputs

- https://docs.fluentbit.io/manual/concepts/data-pipeline/input
- https://docs.fluentbit.io/manual/pipeline/inputs

所有的内置 Inputs 如下所示：

- Collectd
- CPU Metrics
- Disk I/O Metrics
- Docker Events
- Dummy
- Exec
- Forward
- Head
- Health
- Kernel Logs
- Memory Metrics
- MQTT
- Network I/O Metrics
- Process
- Random
- Serial Interface
- Standard Input
- Syslog
- Systemd
- Tail
- TCP
- Thermal
- Windows Event Log

### Dummy

quick start 中演示了 cpu 的案例，下面演示 dummy：

```
docker run -it --rm fluent/fluent-bit:1.6 /fluent-bit/bin/fluent-bit -i dummy -o stdout -f 1
```

```log
(base) ➜  ~ docker run -it --rm fluent/fluent-bit:1.6 /fluent-bit/bin/fluent-bit -i dummy -o stdout -f 1
Fluent Bit v1.6.4
* Copyright (C) 2019-2020 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2020/11/19 02:59:05] [ info] [engine] started (pid=1)
[2020/11/19 02:59:05] [ info] [storage] version=1.0.6, initializing...
[2020/11/19 02:59:05] [ info] [storage] in-memory
[2020/11/19 02:59:05] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2020/11/19 02:59:05] [ info] [sp] stream processor started
[0] dummy.0: [1605754746.296609900, {"message"=>"dummy"}]
[0] dummy.0: [1605754747.296687500, {"message"=>"dummy"}]
[0] dummy.0: [1605754748.296638600, {"message"=>"dummy"}]
[0] dummy.0: [1605754749.296700700, {"message"=>"dummy"}]
[0] dummy.0: [1605754750.296581400, {"message"=>"dummy"}]
^C[2020/11/19 02:59:12] [engine] caught signal (SIGINT)
[0] dummy.0: [1605754751.296912100, {"message"=>"dummy"}]
[2020/11/19 02:59:12] [ warn] [engine] service will stop in 5 seconds
[2020/11/19 02:59:16] [ info] [engine] service stopped
```

更多使用详情参考：https://docs.fluentbit.io/manual/pipeline/inputs
