; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttml.h_tt_time_Add.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttml.h_tt_time_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@TT_FRAME_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i64, i32, i64)* @tt_time_Add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @tt_time_Add(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = bitcast %struct.TYPE_5__* %6 to { i32, i64 }*
  %9 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = bitcast %struct.TYPE_5__* %7 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  store i32 %2, i32* %12, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %15
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TT_FRAME_RATE, align 4
  %27 = call i64 @vlc_tick_from_samples(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TT_FRAME_RATE, align 4
  %34 = srem i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = bitcast %struct.TYPE_5__* %5 to i8*
  %37 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = bitcast %struct.TYPE_5__* %5 to { i32, i64 }*
  %39 = load { i32, i64 }, { i32, i64 }* %38, align 8
  ret { i32, i64 } %39
}

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
