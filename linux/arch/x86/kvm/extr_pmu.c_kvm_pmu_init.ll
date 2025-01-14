; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_kvm_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_kvm_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@kvm_pmi_trigger_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %4)
  store %struct.kvm_pmu* %5, %struct.kvm_pmu** %3, align 8
  %6 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %7 = call i32 @memset(%struct.kvm_pmu* %6, i32 0, i32 4)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %11, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i32 %12(%struct.kvm_vcpu* %13)
  %15 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* @kvm_pmi_trigger_fn, align 4
  %18 = call i32 @init_irq_work(i32* %16, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call i32 @kvm_pmu_refresh(%struct.kvm_vcpu* %19)
  ret void
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local i32 @memset(%struct.kvm_pmu*, i32, i32) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @kvm_pmu_refresh(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
