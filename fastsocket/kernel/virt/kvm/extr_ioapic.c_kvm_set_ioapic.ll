; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_set_ioapic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_set_ioapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_ioapic_state = type { i32 }
%struct.kvm_ioapic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_ioapic(%struct.kvm* %0, %struct.kvm_ioapic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ioapic_state*, align 8
  %6 = alloca %struct.kvm_ioapic*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ioapic_state* %1, %struct.kvm_ioapic_state** %5, align 8
  %7 = load %struct.kvm*, %struct.kvm** %4, align 8
  %8 = call %struct.kvm_ioapic* @ioapic_irqchip(%struct.kvm* %7)
  store %struct.kvm_ioapic* %8, %struct.kvm_ioapic** %6, align 8
  %9 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %10 = icmp ne %struct.kvm_ioapic* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %19 = load %struct.kvm_ioapic_state*, %struct.kvm_ioapic_state** %5, align 8
  %20 = call i32 @memcpy(%struct.kvm_ioapic* %18, %struct.kvm_ioapic_state* %19, i32 4)
  %21 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %22 = call i32 @update_handled_vectors(%struct.kvm_ioapic* %21)
  %23 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.kvm_ioapic* @ioapic_irqchip(%struct.kvm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.kvm_ioapic*, %struct.kvm_ioapic_state*, i32) #1

declare dso_local i32 @update_handled_vectors(%struct.kvm_ioapic*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
