; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_wait_mbx_cmd_cmplt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_wait_mbx_cmd_cmplt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@STS = common dso_local global i32 0, align 4
@STS_PI = common dso_local global i32 0, align 4
@UDELAY_DELAY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_wait_mbx_cmd_cmplt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_wait_mbx_cmd_cmplt(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 100, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %8 = load i32, i32* @STS, align 4
  %9 = call i32 @ql_read32(%struct.ql_adapter* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @STS_PI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %25

15:                                               ; preds = %6
  %16 = load i32, i32* @UDELAY_DELAY, align 4
  %17 = call i32 @mdelay(i32 %16)
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %6, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
