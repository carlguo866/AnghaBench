; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_get_sregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_get_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_sregs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_get_sregs(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @vcpu_load(%struct.kvm_vcpu* %5)
  %7 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %7, i32 0, i32 1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @memcpy(i32* %8, i32* %11, i32 4)
  %13 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %13, i32 0, i32 0
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @memcpy(i32* %14, i32* %19, i32 4)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @vcpu_put(%struct.kvm_vcpu* %21)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
