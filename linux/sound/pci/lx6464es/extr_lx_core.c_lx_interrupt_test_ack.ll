; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_test_ack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_test_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32 }

@ePLX_IRQCS = common dso_local global i32 0, align 4
@IRQCS_ACTIVE_PCIDB = common dso_local global i32 0, align 4
@PCX_IRQ_NONE = common dso_local global i32 0, align 4
@ePLX_L2PCIDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @lx_interrupt_test_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_interrupt_test_ack(%struct.lx6464es* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  %6 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %7 = load i32, i32* @ePLX_IRQCS, align 4
  %8 = call i32 @lx_plx_reg_read(%struct.lx6464es* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IRQCS_ACTIVE_PCIDB, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @PCX_IRQ_NONE, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %20, %13
  %16 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %17 = load i32, i32* @ePLX_L2PCIDB, align 4
  %18 = call i32 @lx_plx_reg_read(%struct.lx6464es* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %25 = load i32, i32* @ePLX_L2PCIDB, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @lx_plx_reg_write(%struct.lx6464es* %24, i32 %25, i32 %26)
  br label %15

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @PCX_IRQ_NONE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @lx_plx_reg_read(%struct.lx6464es*, i32) #1

declare dso_local i32 @lx_plx_reg_write(%struct.lx6464es*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
