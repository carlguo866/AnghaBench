; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_wait_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_wait_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Timeout waiting for register 0x%04X!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*, i32, i32, i32, i32)* @bcma_core_wait_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_core_wait_value(%struct.bcma_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %31, %5
  %19 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bcma_aread32(%struct.bcma_device* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %43

28:                                               ; preds = %18
  %29 = call i32 (...) @cpu_relax()
  %30 = call i32 @udelay(i32 10)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @time_after_eq(i32 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %18, label %37

37:                                               ; preds = %31
  %38 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %39 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @bcma_warn(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %27
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @bcma_aread32(%struct.bcma_device*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

declare dso_local i32 @bcma_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
