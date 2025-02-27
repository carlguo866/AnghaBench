; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-vf610-mscm-ir.c_vf610_mscm_ir_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-vf610-mscm-ir.c_vf610_mscm_ir_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.vf610_mscm_ir_chip_data*, i32 }
%struct.vf610_mscm_ir_chip_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @vf610_mscm_ir_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_mscm_ir_disable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vf610_mscm_ir_chip_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %9, align 8
  store %struct.vf610_mscm_ir_chip_data* %10, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %11 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %12 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, %struct.vf610_mscm_ir_chip_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @MSCM_IRSPRC(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @writew_relaxed(i32 0, i64 %16)
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = call i32 @irq_chip_disable_parent(%struct.irq_data* %18)
  ret void
}

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i64 @MSCM_IRSPRC(i32) #1

declare dso_local i32 @irq_chip_disable_parent(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
