; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mxs.c_icoll_irq_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mxs.c_icoll_irq_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }

@icoll_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ICOLL = common dso_local global i64 0, align 8
@mxs_icoll_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@asm9260_icoll_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @icoll_irq_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icoll_irq_domain_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @icoll_priv, i32 0, i32 0), align 8
  %9 = load i64, i64* @ICOLL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.irq_chip* @mxs_icoll_chip, %struct.irq_chip** %7, align 8
  br label %13

12:                                               ; preds = %3
  store %struct.irq_chip* @asm9260_icoll_chip, %struct.irq_chip** %7, align 8
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %16 = load i32, i32* @handle_level_irq, align 4
  %17 = call i32 @irq_set_chip_and_handler(i32 %14, %struct.irq_chip* %15, i32 %16)
  ret i32 0
}

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
