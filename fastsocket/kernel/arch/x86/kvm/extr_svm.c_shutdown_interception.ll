; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_shutdown_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_shutdown_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_run* }
%struct.kvm_run = type { i32 }

@KVM_EXIT_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @shutdown_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shutdown_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.kvm_run*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %5 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  store %struct.kvm_run* %7, %struct.kvm_run** %3, align 8
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clear_page(i32 %10)
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %13 = call i32 @init_vmcb(%struct.vcpu_svm* %12)
  %14 = load i32, i32* @KVM_EXIT_SHUTDOWN, align 4
  %15 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret i32 0
}

declare dso_local i32 @clear_page(i32) #1

declare dso_local i32 @init_vmcb(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
