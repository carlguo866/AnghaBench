; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_dev_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_dev_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@UB_MAX_DEV = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.TYPE_2__* null, align 8
@DEV_STA_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dev_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @UB_MAX_DEV, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devices, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEV_STA_OPEN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
