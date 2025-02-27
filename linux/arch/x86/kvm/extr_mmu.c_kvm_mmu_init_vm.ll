; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_init_vm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_init_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_page_track_notifier_node }
%struct.kvm_page_track_notifier_node = type { i32, i32 }

@kvm_mmu_pte_write = common dso_local global i32 0, align 4
@kvm_mmu_invalidate_zap_pages_in_memslot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_init_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_page_track_notifier_node*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %4 = load %struct.kvm*, %struct.kvm** %2, align 8
  %5 = getelementptr inbounds %struct.kvm, %struct.kvm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.kvm_page_track_notifier_node* %6, %struct.kvm_page_track_notifier_node** %3, align 8
  %7 = load i32, i32* @kvm_mmu_pte_write, align 4
  %8 = load %struct.kvm_page_track_notifier_node*, %struct.kvm_page_track_notifier_node** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_page_track_notifier_node, %struct.kvm_page_track_notifier_node* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @kvm_mmu_invalidate_zap_pages_in_memslot, align 4
  %11 = load %struct.kvm_page_track_notifier_node*, %struct.kvm_page_track_notifier_node** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_page_track_notifier_node, %struct.kvm_page_track_notifier_node* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.kvm*, %struct.kvm** %2, align 8
  %14 = load %struct.kvm_page_track_notifier_node*, %struct.kvm_page_track_notifier_node** %3, align 8
  %15 = call i32 @kvm_page_track_register_notifier(%struct.kvm* %13, %struct.kvm_page_track_notifier_node* %14)
  ret void
}

declare dso_local i32 @kvm_page_track_register_notifier(%struct.kvm*, %struct.kvm_page_track_notifier_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
