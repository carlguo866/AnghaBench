; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.irq_data = type { i32 }

@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@siu_reg = common dso_local global %struct.TYPE_2__* null, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @mpc8xx_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xx_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %12 = call i32 @irqd_to_hwirq(%struct.irq_data* %11)
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @siu_reg, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @in_be32(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = call i32 @mpc8xx_irqd_to_bit(%struct.irq_data* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @siu_reg, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @out_be32(i32* %24, i32 %25)
  %27 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %28 = load i32, i32* @handle_edge_irq, align 4
  %29 = call i32 @irq_set_handler_locked(%struct.irq_data* %27, i32 %28)
  br label %30

30:                                               ; preds = %15, %10, %2
  ret i32 0
}

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @mpc8xx_irqd_to_bit(%struct.irq_data*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
