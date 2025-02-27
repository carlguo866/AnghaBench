; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_makeCCtxParamsFromCParams.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_makeCCtxParamsFromCParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ZSTD_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i32)* @ZSTD_makeCCtxParamsFromCParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @ZSTD_makeCCtxParamsFromCParams(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32, align 4
  %4 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @memset(%struct.TYPE_6__* %2, i32 0, i32 12)
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @ZSTD_CLEVEL_DEFAULT, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ZSTD_checkCParams(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = bitcast { i64, i32 }* %4 to i8*
  %19 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = load { i64, i32 }, { i64, i32 }* %4, align 8
  ret { i64, i32 } %20
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
