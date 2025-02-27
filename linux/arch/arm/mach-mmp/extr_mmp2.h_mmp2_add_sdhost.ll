; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_mmp2.h_mmp2_add_sdhost.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_mmp2.h_mmp2_add_sdhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_device_desc = type { i32 }
%struct.sdhci_pxa_platdata = type { i32 }

@mmp2_device_sdh0 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@mmp2_device_sdh1 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@mmp2_device_sdh2 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@mmp2_device_sdh3 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_pxa_platdata*)* @mmp2_add_sdhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp2_add_sdhost(i32 %0, %struct.sdhci_pxa_platdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pxa_platdata*, align 8
  %6 = alloca %struct.pxa_device_desc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sdhci_pxa_platdata* %1, %struct.sdhci_pxa_platdata** %5, align 8
  store %struct.pxa_device_desc* null, %struct.pxa_device_desc** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
  ]

8:                                                ; preds = %2
  store %struct.pxa_device_desc* @mmp2_device_sdh0, %struct.pxa_device_desc** %6, align 8
  br label %15

9:                                                ; preds = %2
  store %struct.pxa_device_desc* @mmp2_device_sdh1, %struct.pxa_device_desc** %6, align 8
  br label %15

10:                                               ; preds = %2
  store %struct.pxa_device_desc* @mmp2_device_sdh2, %struct.pxa_device_desc** %6, align 8
  br label %15

11:                                               ; preds = %2
  store %struct.pxa_device_desc* @mmp2_device_sdh3, %struct.pxa_device_desc** %6, align 8
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %11, %10, %9, %8
  %16 = load %struct.pxa_device_desc*, %struct.pxa_device_desc** %6, align 8
  %17 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %18 = call i32 @pxa_register_device(%struct.pxa_device_desc* %16, %struct.sdhci_pxa_platdata* %17, i32 4)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @pxa_register_device(%struct.pxa_device_desc*, %struct.sdhci_pxa_platdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
