; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_..includer_utilr_itv.h_r_itv_overlap2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_..includer_utilr_itv.h_r_itv_overlap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @r_itv_overlap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_itv_overlap2(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = bitcast %struct.TYPE_5__* %4 to i64*
  store i64 %0, i64* %8, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast %struct.TYPE_5__* %4 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = bitcast %struct.TYPE_5__* %7 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @r_itv_overlap(i64 %14, i64 %16)
  ret i32 %17
}

declare dso_local i32 @r_itv_overlap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
