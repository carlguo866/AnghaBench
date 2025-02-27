; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call i32 @kvm_free_vcpus(%struct.kvm* %3)
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = call i32 @kvm_free_physmem(%struct.kvm* %5)
  %7 = load %struct.kvm*, %struct.kvm** %2, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @free_page(i64 %10)
  %12 = load %struct.kvm*, %struct.kvm** %2, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @debug_unregister(i32 %15)
  %17 = load %struct.kvm*, %struct.kvm** %2, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 0
  %19 = call i32 @cleanup_srcu_struct(i32* %18)
  %20 = load %struct.kvm*, %struct.kvm** %2, align 8
  %21 = call i32 @kfree(%struct.kvm* %20)
  ret void
}

declare dso_local i32 @kvm_free_vcpus(%struct.kvm*) #1

declare dso_local i32 @kvm_free_physmem(%struct.kvm*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @debug_unregister(i32) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

declare dso_local i32 @kfree(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
