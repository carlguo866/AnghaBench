; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_pen_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_pen_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_ts = type { i32 }

@UCB_TS_CR = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPX_LOW = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMX_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00_ts*)* @ucb1x00_ts_pen_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_ts_pen_down(%struct.ucb1x00_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucb1x00_ts*, align 8
  %4 = alloca i32, align 4
  store %struct.ucb1x00_ts* %0, %struct.ucb1x00_ts** %3, align 8
  %5 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %6 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UCB_TS_CR, align 4
  %9 = call i32 @ucb1x00_reg_read(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i64 (...) @machine_is_collie()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @UCB_TS_CR_TSPX_LOW, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @UCB_TS_CR_TSPX_LOW, align 4
  %22 = load i32, i32* @UCB_TS_CR_TSMX_LOW, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ucb1x00_reg_read(i32, i32) #1

declare dso_local i64 @machine_is_collie(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
