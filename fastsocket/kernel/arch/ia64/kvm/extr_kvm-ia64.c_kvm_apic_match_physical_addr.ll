; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_apic_match_physical_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_apic_match_physical_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_match_physical_addr(%struct.kvm_lapic* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
