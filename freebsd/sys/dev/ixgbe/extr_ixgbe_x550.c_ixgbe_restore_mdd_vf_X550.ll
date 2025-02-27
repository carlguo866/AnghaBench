; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_restore_mdd_vf_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_restore_mdd_vf_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ixgbe_restore_mdd_vf_X550\00", align 1
@IXGBE_MRQC = common dso_local global i32 0, align 4
@IXGBE_MRQC_MRQE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_restore_mdd_vf_X550(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = load i32, i32* @IXGBE_MRQC, align 4
  %13 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %19 [
    i32 128, label %17
    i32 130, label %18
    i32 129, label %18
  ]

17:                                               ; preds = %2
  store i32 8, i32* %7, align 4
  store i32 255, i32* %9, align 4
  br label %20

18:                                               ; preds = %2, %2
  store i32 4, i32* %7, align 4
  store i32 15, i32* %9, align 4
  br label %20

19:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  store i32 3, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %18, %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 32
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 32
  %29 = shl i32 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @IXGBE_WQBR_TX(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i32 %34, i32 %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @IXGBE_WQBR_RX(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WQBR_TX(i32) #1

declare dso_local i32 @IXGBE_WQBR_RX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
