; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_nonpaging_gva_to_gpa_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_nonpaging_gva_to_gpa_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.kvm_vcpu.0*, i32, i32, %struct.x86_exception*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.x86_exception = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)* @nonpaging_gva_to_gpa_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonpaging_gva_to_gpa_nested(%struct.kvm_vcpu* %0, i32 %1, i32 %2, %struct.x86_exception* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.x86_exception*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.x86_exception* %3, %struct.x86_exception** %8, align 8
  %9 = load %struct.x86_exception*, %struct.x86_exception** %8, align 8
  %10 = icmp ne %struct.x86_exception* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load %struct.x86_exception*, %struct.x86_exception** %8, align 8
  %13 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.kvm_vcpu.0*, i32, i32, %struct.x86_exception*)*, i32 (%struct.kvm_vcpu.0*, i32, i32, %struct.x86_exception*)** %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = bitcast %struct.kvm_vcpu* %20 to %struct.kvm_vcpu.0*
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.x86_exception*, %struct.x86_exception** %8, align 8
  %25 = call i32 %19(%struct.kvm_vcpu.0* %21, i32 %22, i32 %23, %struct.x86_exception* %24)
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
