; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_irq_domain_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_irq_domain_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.device_node*)* }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }

@xive_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32)* @xive_irq_domain_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_irq_domain_match(%struct.irq_domain* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xive_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %8, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32 %9(%struct.device_node* %10)
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
