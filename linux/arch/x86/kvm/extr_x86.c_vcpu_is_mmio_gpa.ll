; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_is_mmio_gpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_is_mmio_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i32)* @vcpu_is_mmio_gpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_is_mmio_gpa(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @PAGE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %27

16:                                               ; preds = %4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @vcpu_match_mmio_gpa(%struct.kvm_vcpu* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @trace_vcpu_match_mmio(i64 %22, i32 %23, i32 %24, i32 1)
  store i32 1, i32* %5, align 4
  br label %27

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %21, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @vcpu_match_mmio_gpa(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_vcpu_match_mmio(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
