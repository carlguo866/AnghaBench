; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_mov_from_dbr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_mov_from_dbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mov_from_dbr(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %8 = bitcast %struct.TYPE_4__* %7 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @vcpu_get_gr(%struct.kvm_vcpu* %9, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @vcpu_get_dbr(%struct.kvm_vcpu* %14, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %17, i32 %20, i64 %21, i32 0)
  ret void
}

declare dso_local i64 @vcpu_get_gr(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vcpu_get_dbr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_set_gr(%struct.kvm_vcpu*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
