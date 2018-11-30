# 报错
    java.lang.OutOfMemoryError: GC overhead limit exceeded
    java -jar data-process-0.1.jar -Xmx10240m -Xms10240m -Xmn2g -Xss128k -XX:+UseParallelGC -XX:ParallelGCThreads=20

    GC overhead limit exceeded] with root cause
    java.lang.OutOfMemoryError: GC overhead limit exceeded