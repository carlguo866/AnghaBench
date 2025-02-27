; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_kick.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vcpu_kick(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i64 @kvm_vcpu_wake_up(%struct.kvm_vcpu* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = call i32 (...) @get_cpu()
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @cpu_online(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i64 @kvm_arch_vcpu_should_kick(%struct.kvm_vcpu* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @smp_send_reschedule(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %21, %17, %12
  %34 = call i32 (...) @put_cpu()
  br label %35

35:                                               ; preds = %33, %11
  ret void
}

declare dso_local i64 @kvm_vcpu_wake_up(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i64 @kvm_arch_vcpu_should_kick(%struct.kvm_vcpu*) #1

declare dso_local i32 @smp_send_reschedule(i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
