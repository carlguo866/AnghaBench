; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_itr_d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_itr_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_itr_d(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %10 = bitcast %struct.TYPE_4__* %9 to i64*
  store i64 %1, i64* %10, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @vcpu_get_gr(%struct.kvm_vcpu* %11, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @vcpu_get_gr(%struct.kvm_vcpu* %16, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = call i64 @vcpu_get_itir(%struct.kvm_vcpu* %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = call i64 @vcpu_get_ifa(%struct.kvm_vcpu* %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @vcpu_itr_d(%struct.kvm_vcpu* %25, i64 %26, i64 %27, i64 %28, i64 %29)
  ret void
}

declare dso_local i64 @vcpu_get_gr(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vcpu_get_itir(%struct.kvm_vcpu*) #1

declare dso_local i64 @vcpu_get_ifa(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_itr_d(%struct.kvm_vcpu*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
