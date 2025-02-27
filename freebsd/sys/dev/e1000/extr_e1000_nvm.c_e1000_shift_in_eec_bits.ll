; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_shift_in_eec_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_shift_in_eec_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_shift_in_eec_bits\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_DO = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @e1000_shift_in_eec_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_shift_in_eec_bits(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @E1000_EECD, align 4
  %11 = call i64 @E1000_READ_REG(%struct.e1000_hw* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @E1000_EECD_DO, align 8
  %13 = load i64, i64* @E1000_EECD_DI, align 8
  %14 = or i64 %12, %13
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %44, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = shl i64 %23, 1
  store i64 %24, i64* %7, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = call i32 @e1000_raise_eec_clk(%struct.e1000_hw* %25, i64* %5)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = load i32, i32* @E1000_EECD, align 4
  %29 = call i64 @E1000_READ_REG(%struct.e1000_hw* %27, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* @E1000_EECD_DI, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @E1000_EECD_DO, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %38, %22
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = call i32 @e1000_lower_eec_clk(%struct.e1000_hw* %42, i64* %5)
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_raise_eec_clk(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e1000_lower_eec_clk(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
