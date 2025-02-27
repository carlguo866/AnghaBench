; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_npmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_npmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@pmc_syscall = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_npmc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @pmc_syscall, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ENXIO, align 4
  store i32 %7, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_info, i32 0, i32 1), align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %8
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_info, i32 0, i32 0), align 8
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %16, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
