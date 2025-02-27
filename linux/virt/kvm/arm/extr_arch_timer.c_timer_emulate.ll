; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_timer_emulate.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_timer_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_timer_context = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arch_timer_context*)* @timer_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_emulate(%struct.arch_timer_context* %0) #0 {
  %2 = alloca %struct.arch_timer_context*, align 8
  %3 = alloca i32, align 4
  store %struct.arch_timer_context* %0, %struct.arch_timer_context** %2, align 8
  %4 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %5 = call i32 @kvm_timer_should_fire(%struct.arch_timer_context* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @trace_kvm_timer_emulate(%struct.arch_timer_context* %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %11 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %17 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %21 = call i32 @kvm_timer_update_irq(i32 %18, i32 %19, %struct.arch_timer_context* %20)
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %24 = call i32 @kvm_timer_irq_can_fire(%struct.arch_timer_context* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %28 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %27, i32 0, i32 0
  %29 = call i32 @soft_timer_cancel(i32* %28)
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %32 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %31, i32 0, i32 0
  %33 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %34 = call i32 @kvm_timer_compute_delta(%struct.arch_timer_context* %33)
  %35 = call i32 @soft_timer_start(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %26, %15
  ret void
}

declare dso_local i32 @kvm_timer_should_fire(%struct.arch_timer_context*) #1

declare dso_local i32 @trace_kvm_timer_emulate(%struct.arch_timer_context*, i32) #1

declare dso_local i32 @kvm_timer_update_irq(i32, i32, %struct.arch_timer_context*) #1

declare dso_local i32 @kvm_timer_irq_can_fire(%struct.arch_timer_context*) #1

declare dso_local i32 @soft_timer_cancel(i32*) #1

declare dso_local i32 @soft_timer_start(i32*, i32) #1

declare dso_local i32 @kvm_timer_compute_delta(%struct.arch_timer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
