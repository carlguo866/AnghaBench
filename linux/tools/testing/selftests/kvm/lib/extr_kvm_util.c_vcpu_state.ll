; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vcpu_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vcpu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vm = type { i32 }
%struct.vcpu = type { %struct.kvm_run* }

@.str = private unnamed_addr constant [27 x i8] c"vcpu not found, vcpuid: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.vcpu* @vcpu_find(%struct.kvm_vm* %6, i32 %7)
  store %struct.vcpu* %8, %struct.vcpu** %5, align 8
  %9 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %10 = icmp ne %struct.vcpu* %9, null
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TEST_ASSERT(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %15 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %14, i32 0, i32 0
  %16 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  ret %struct.kvm_run* %16
}

declare dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
