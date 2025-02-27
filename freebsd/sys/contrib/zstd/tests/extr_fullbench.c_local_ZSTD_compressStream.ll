; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_compressStream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_compressStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i8* }
%struct.TYPE_11__ = type { i64, i64, i8* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__ }

@__const.local_ZSTD_compressStream.f = private unnamed_addr constant %struct.TYPE_12__ { i32 1, i32 0, i32 0 }, align 4
@g_cstream = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @local_ZSTD_compressStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @local_ZSTD_compressStream(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_12__* @__const.local_ZSTD_compressStream.f to i8*), i64 12, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %17 = bitcast %struct.TYPE_12__* %16 to i8*
  %18 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @g_cstream, align 4
  %24 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %25 = bitcast %struct.TYPE_9__* %13 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 4
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @ZSTD_initCStream_advanced(i32 %23, i32* null, i32 0, i64 %27, i64 %29, i32 %24)
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @g_cstream, align 4
  %42 = call i32 @ZSTD_compressStream(i32 %41, %struct.TYPE_10__* %11, %struct.TYPE_11__* %12)
  %43 = load i32, i32* @g_cstream, align 4
  %44 = call i32 @ZSTD_endStream(i32 %43, %struct.TYPE_10__* %11)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  ret i64 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ZSTD_initCStream_advanced(i32, i32*, i32, i64, i64, i32) #2

declare dso_local i32 @ZSTD_compressStream(i32, %struct.TYPE_10__*, %struct.TYPE_11__*) #2

declare dso_local i32 @ZSTD_endStream(i32, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
