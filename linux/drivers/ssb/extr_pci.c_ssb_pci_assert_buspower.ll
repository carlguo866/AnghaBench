; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_assert_buspower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_assert_buspower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"FATAL ERROR: Bus powered down while accessing PCI MMIO space\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*)* @ssb_pci_assert_buspower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pci_assert_buspower(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %5 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 10
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = call i32 (...) @dump_stack()
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
