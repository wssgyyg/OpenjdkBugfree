# 语言选项，必须设置，否则编译好后会出现一个 HashTable 的 NPE错
export LANG=C

# Bootstrap JDK 解压路径，必须设置
export ALT_BOOTDIR=/usr/lib/jvm/jdk1.7.0_79

# 允许自动下载
export ALLOW_DOWNLOADS=true

# 并行编译线程数
export HOTSPOT_BUILD_JOBS=4
export ALT_PARALLEL_COMPILE_JOBS=4

# 比较本次 build 出来的映像与先前版本的差异，对我们没有意义
# 必须设置为 false，否则 sanity 检查为报缺少先前版本 JDK 的映像的错误提示
export SKIP_COMPARE_IMAGE=false

# 使用预编译头文件，不加这个编译会变慢
export USE_PRECOMPILED_HEADER=true

# 要编译的内容 这里我们全编译其实只要前三个就可以了自行注释
export BUILD_LANGTOOLS=true
export BUILD_HOTSPOT=true
export BUILD_JDK=true
export BUILD_JAXWS=true
export BUILD_JAXP=true
export BUILD_CORBA=true

# 要编译的版本 
# export SKIP_DEBUG_BUILD=false
# export SKIP_FASTDEBUG_BUILD=true
# export DEBUG_NAME=debug

# 把它设置为 false 可以避开 javaws 和浏览器 Java 插件之类的部分的 build
BUILD_DEPLOY=false

# 把它设置为 false 就不会 build 出安装包，因为安装包里有奇怪的依赖
# 但即使不 build 出它也能得到完整的 JDK 映像，所以还是别 build
BUILD_INSTALL=false

# 编译结果所存放的路径
export ALT_OUTPUTDIR=<span>/home/hanghang/JVMWorkSpace/openjdk/</span><span>build</span>

# 这两个环境变量必须去掉，不然会发生奇怪的事情
# Makefile 检查到这两个变量就会提示警告
unset JAVA_HOME
unset CLASSPATH

 
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
B
make sanity
