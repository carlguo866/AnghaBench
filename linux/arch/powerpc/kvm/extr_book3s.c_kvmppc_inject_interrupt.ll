; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_inject_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_inject_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.kvm_vcpu.0*)* }
%struct.kvm_vcpu.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_inject_interrupt(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call i32 @kvmppc_unfixup_split_real(%struct.kvm_vcpu* %7)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %10)
  %12 = call i32 @kvmppc_set_srr0(%struct.kvm_vcpu* %9, i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %14)
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, -2017394689
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = or i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @kvmppc_set_srr1(%struct.kvm_vcpu* %13, i32 %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = call i64 @kvmppc_interrupt_offset(%struct.kvm_vcpu* %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %23, i64 %28)
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.kvm_vcpu.0*)*, i32 (%struct.kvm_vcpu.0*)** %33, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = bitcast %struct.kvm_vcpu* %35 to %struct.kvm_vcpu.0*
  %37 = call i32 %34(%struct.kvm_vcpu.0* %36)
  ret void
}

declare dso_local i32 @kvmppc_unfixup_split_real(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_srr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_srr1(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvmppc_interrupt_offset(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
