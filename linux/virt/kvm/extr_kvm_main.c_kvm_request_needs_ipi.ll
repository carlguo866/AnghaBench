; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_request_needs_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_request_needs_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@KVM_REQUEST_WAIT = common dso_local global i32 0, align 4
@OUTSIDE_GUEST_MODE = common dso_local global i32 0, align 4
@IN_GUEST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvm_request_needs_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_request_needs_ipi(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call i32 @kvm_vcpu_exiting_guest_mode(%struct.kvm_vcpu* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @KVM_REQUEST_WAIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @OUTSIDE_GUEST_MODE, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IN_GUEST_MODE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @kvm_vcpu_exiting_guest_mode(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
