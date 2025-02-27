; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_vcpu_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @vmx_vcpu_load_vmcs(%struct.kvm_vcpu* %8, i32 %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @vmx_vcpu_pi_load(%struct.kvm_vcpu* %11, i32 %12)
  %14 = call i32 (...) @read_pkru()
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @get_debugctlmsr()
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_vcpu_load_vmcs(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_vcpu_pi_load(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @read_pkru(...) #1

declare dso_local i32 @get_debugctlmsr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
