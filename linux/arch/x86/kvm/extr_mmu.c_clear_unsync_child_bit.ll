; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_clear_unsync_child_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_clear_unsync_child_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_mmu_page*, i32)* @clear_unsync_child_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_unsync_child_bit(%struct.kvm_mmu_page* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_mmu_page*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @__clear_bit(i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
