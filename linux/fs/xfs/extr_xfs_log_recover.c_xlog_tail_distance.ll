; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_tail_distance.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_tail_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlog*, i64, i64)* @xlog_tail_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlog_tail_distance(%struct.xlog* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xlog*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.xlog* %0, %struct.xlog** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = sub nsw i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.xlog*, %struct.xlog** %5, align 8
  %19 = getelementptr inbounds %struct.xlog, %struct.xlog* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 %20, %21
  %23 = add nsw i64 %17, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
