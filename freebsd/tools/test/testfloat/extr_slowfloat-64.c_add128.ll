; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_slowfloat-64.c_add128.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_slowfloat-64.c_add128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i64, i64, i64, i64)* @add128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @add128(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = bitcast %struct.TYPE_5__* %6 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = bitcast %struct.TYPE_5__* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %15
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %20, %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = bitcast %struct.TYPE_5__* %5 to i8*
  %33 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = bitcast %struct.TYPE_5__* %5 to { i64, i64 }*
  %35 = load { i64, i64 }, { i64, i64 }* %34, align 8
  ret { i64, i64 } %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
