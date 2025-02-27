; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_grow_ple_window.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_grow_ple_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, i32 }

@ple_window = common dso_local global i32 0, align 4
@ple_window_grow = common dso_local global i32 0, align 4
@ple_window_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @grow_ple_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_ple_window(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %5)
  store %struct.vcpu_vmx* %6, %struct.vcpu_vmx** %3, align 8
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ple_window, align 4
  %12 = load i32, i32* @ple_window_grow, align 4
  %13 = load i32, i32* @ple_window_max, align 4
  %14 = call i32 @__grow_ple_window(i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @trace_kvm_ple_window_update(i32 %27, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @__grow_ple_window(i32, i32, i32, i32) #1

declare dso_local i32 @trace_kvm_ple_window_update(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
