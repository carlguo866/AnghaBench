; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_core_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_core_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32 (%struct.kvm*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_core_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = getelementptr inbounds %struct.kvm, %struct.kvm* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %7, align 8
  %9 = load %struct.kvm*, %struct.kvm** %2, align 8
  %10 = call i32 %8(%struct.kvm* %9)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
