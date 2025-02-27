; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_assign_irq_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_assign_irq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_cfg = type { i32 }
%struct.cpumask = type { i32 }

@vector_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assign_irq_vector(i32 %0, %struct.irq_cfg* %1, %struct.cpumask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_cfg*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.irq_cfg* %1, %struct.irq_cfg** %5, align 8
  store %struct.cpumask* %2, %struct.cpumask** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @vector_lock, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.irq_cfg*, %struct.irq_cfg** %5, align 8
  %13 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %14 = call i32 @__assign_irq_vector(i32 %11, %struct.irq_cfg* %12, %struct.cpumask* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @vector_lock, i64 %15)
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__assign_irq_vector(i32, %struct.irq_cfg*, %struct.cpumask*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
