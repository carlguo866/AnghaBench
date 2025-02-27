; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_reset_speedfax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_reset_speedfax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfax_hw = type { i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: resetting card\0A\00", align 1
@TIGER_EXTERN_RESET_ON = common dso_local global i32 0, align 4
@TIGER_RESET_ADDR = common dso_local global i64 0, align 8
@SFAX_PCI_RESET_ON = common dso_local global i32 0, align 4
@TIGER_AUX_DATA = common dso_local global i64 0, align 8
@TIGER_EXTERN_RESET_OFF = common dso_local global i32 0, align 4
@SFAX_PCI_RESET_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfax_hw*)* @reset_speedfax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_speedfax(%struct.sfax_hw* %0) #0 {
  %2 = alloca %struct.sfax_hw*, align 8
  store %struct.sfax_hw* %0, %struct.sfax_hw** %2, align 8
  %3 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %4 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @TIGER_EXTERN_RESET_ON, align 4
  %8 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %9 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TIGER_RESET_ADDR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 %7, i64 %12)
  %14 = load i32, i32* @SFAX_PCI_RESET_ON, align 4
  %15 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %16 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TIGER_AUX_DATA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %14, i64 %19)
  %21 = call i32 @mdelay(i32 1)
  %22 = load i32, i32* @TIGER_EXTERN_RESET_OFF, align 4
  %23 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %24 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TIGER_RESET_ADDR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %22, i64 %27)
  %29 = load i32, i32* @SFAX_PCI_RESET_OFF, align 4
  %30 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %31 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %33 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %36 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TIGER_AUX_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  %41 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
