; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_sl = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CPSW_SL_SOFT_RESET = common dso_local global i32 0, align 4
@CPSW_SL_SOFT_RESET_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cpsw_sl failed to soft-reset.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_sl_reset(%struct.cpsw_sl* %0, i64 %1) #0 {
  %3 = alloca %struct.cpsw_sl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.cpsw_sl* %0, %struct.cpsw_sl** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @msecs_to_jiffies(i64 %7)
  %9 = add i64 %6, %8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.cpsw_sl*, %struct.cpsw_sl** %3, align 8
  %11 = load i32, i32* @CPSW_SL_SOFT_RESET, align 4
  %12 = load i32, i32* @CPSW_SL_SOFT_RESET_BIT, align 4
  %13 = call i32 @cpsw_sl_reg_write(%struct.cpsw_sl* %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %28, %2
  %15 = call i32 @usleep_range(i32 100, i32 200)
  br label %16

16:                                               ; preds = %14
  %17 = load %struct.cpsw_sl*, %struct.cpsw_sl** %3, align 8
  %18 = load i32, i32* @CPSW_SL_SOFT_RESET, align 4
  %19 = call i32 @cpsw_sl_reg_read(%struct.cpsw_sl* %17, i32 %18)
  %20 = load i32, i32* @CPSW_SL_SOFT_RESET_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = call i64 @time_after(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i1 [ false, %16 ], [ %27, %23 ]
  br i1 %29, label %14, label %30

30:                                               ; preds = %28
  %31 = load %struct.cpsw_sl*, %struct.cpsw_sl** %3, align 8
  %32 = load i32, i32* @CPSW_SL_SOFT_RESET, align 4
  %33 = call i32 @cpsw_sl_reg_read(%struct.cpsw_sl* %31, i32 %32)
  %34 = load i32, i32* @CPSW_SL_SOFT_RESET_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.cpsw_sl*, %struct.cpsw_sl** %3, align 8
  %39 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %30
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @cpsw_sl_reg_write(%struct.cpsw_sl*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cpsw_sl_reg_read(%struct.cpsw_sl*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
