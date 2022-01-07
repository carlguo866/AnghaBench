; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_cleanup_single_escalation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_cleanup_single_escalation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvmppc_xive_vcpu = type { i32 }
%struct.irq_data = type { i32 }
%struct.xive_irq_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xive_cleanup_single_escalation(%struct.kvm_vcpu* %0, %struct.kvmppc_xive_vcpu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.xive_irq_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvmppc_xive_vcpu* %1, %struct.kvmppc_xive_vcpu** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.irq_data* @irq_get_irq_data(i32 %9)
  store %struct.irq_data* %10, %struct.irq_data** %7, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %12 = call %struct.xive_irq_data* @irq_data_get_irq_handler_data(%struct.irq_data* %11)
  store %struct.xive_irq_data* %12, %struct.xive_irq_data** %8, align 8
  %13 = load %struct.xive_irq_data*, %struct.xive_irq_data** %8, align 8
  %14 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.xive_irq_data*, %struct.xive_irq_data** %8, align 8
  %23 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %3
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local %struct.xive_irq_data* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
