; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_set_hard_rate_select_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_set_hard_rate_select_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP5_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid fixed module speed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_hard_rate_select_speed(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_ESDP, align 4
  %8 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 128, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @IXGBE_ESDP_SDP5_DIR, align 4
  %12 = load i32, i32* @IXGBE_ESDP_SDP5, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @IXGBE_ESDP_SDP5, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @IXGBE_ESDP_SDP5_DIR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %2
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %33

26:                                               ; preds = %16, %10
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = load i32, i32* @IXGBE_ESDP, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %31)
  br label %33

33:                                               ; preds = %26, %24
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
