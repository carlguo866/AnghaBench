; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_serd.c_fmd_event_delta.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_serd.c_fmd_event_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fmd_event_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fmd_event_delta(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 %13, %14
  br label %23

16:                                               ; preds = %2
  %17 = load i64, i64* @UINT64_MAX, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  %22 = add nsw i64 %21, 1
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i64 [ %15, %12 ], [ %22, %16 ]
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
