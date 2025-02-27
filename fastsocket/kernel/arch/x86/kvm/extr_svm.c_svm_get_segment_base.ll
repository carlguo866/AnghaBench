; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_get_segment_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_get_segment_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcb_seg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @svm_get_segment_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_get_segment_base(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb_seg*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu* %6, i32 %7)
  store %struct.vmcb_seg* %8, %struct.vmcb_seg** %5, align 8
  %9 = load %struct.vmcb_seg*, %struct.vmcb_seg** %5, align 8
  %10 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

declare dso_local %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
