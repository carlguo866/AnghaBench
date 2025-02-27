; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_enable_irq_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_enable_irq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32 }

@VFE_0_IRQ_MASK_0_RESET_ACK = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_1_VIOLATION = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_1_BUS_BDG_HALT_ACK = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_0 = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*)* @vfe_enable_irq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_enable_irq_common(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  %5 = load i32, i32* @VFE_0_IRQ_MASK_0_RESET_ACK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @VFE_0_IRQ_MASK_1_VIOLATION, align 4
  %7 = load i32, i32* @VFE_0_IRQ_MASK_1_BUS_BDG_HALT_ACK, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %10 = load i32, i32* @VFE_0_IRQ_MASK_0, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @vfe_reg_set(%struct.vfe_device* %9, i32 %10, i32 %11)
  %13 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %14 = load i32, i32* @VFE_0_IRQ_MASK_1, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @vfe_reg_set(%struct.vfe_device* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
