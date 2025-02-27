; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_free_vmcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_free_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_free_vmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_free_vmcs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %12 = call i32 @vcpu_clear(%struct.vcpu_vmx* %11)
  %13 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %14 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @free_vmcs(i32* %15)
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_clear(%struct.vcpu_vmx*) #1

declare dso_local i32 @free_vmcs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
