; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_gva_to_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_gva_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kvm_vcpu = type { i32 }

@UNMAPPED_GVA = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @gva_to_page(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @kvm_mmu_gva_to_gpa_read(%struct.kvm_vcpu* %8, i32 %9, i32* null)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @UNMAPPED_GVA, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = call %struct.page* @gfn_to_page(i32 %18, i32 %21)
  store %struct.page* %22, %struct.page** %6, align 8
  %23 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %23, %struct.page** %3, align 8
  br label %24

24:                                               ; preds = %15, %14
  %25 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %25
}

declare dso_local i32 @kvm_mmu_gva_to_gpa_read(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local %struct.page* @gfn_to_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
