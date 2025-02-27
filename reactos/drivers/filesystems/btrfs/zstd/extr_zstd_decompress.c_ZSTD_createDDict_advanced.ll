; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_createDDict_advanced.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_createDDict_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ZSTD_createDDict_advanced(i8* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = bitcast %struct.TYPE_8__* %7 to i64*
  store i64 %4, i64* %14, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = xor i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %55

28:                                               ; preds = %5
  %29 = bitcast %struct.TYPE_8__* %7 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i64 @ZSTD_malloc(i32 8, i64 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %12, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %55

36:                                               ; preds = %28
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = bitcast %struct.TYPE_8__* %38 to i8*
  %40 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @ZSTD_initDDict_internal(%struct.TYPE_9__* %41, i8* %42, i64 %43, i32 %44, i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @ZSTD_isError(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = call i32 @ZSTD_freeDDict(%struct.TYPE_9__* %51)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %55

53:                                               ; preds = %36
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %6, align 8
  br label %55

55:                                               ; preds = %53, %50, %35, %27
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %56
}

declare dso_local i64 @ZSTD_malloc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ZSTD_initDDict_internal(%struct.TYPE_9__*, i8*, i64, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_freeDDict(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
