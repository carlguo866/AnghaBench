; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_isondev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_isondev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swdevt = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.swdevt*)* @swp_pager_isondev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swp_pager_isondev(i64 %0, %struct.swdevt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.swdevt*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.swdevt* %1, %struct.swdevt** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %7 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %13 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
