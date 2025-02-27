; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_tlb0_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_tlb0_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.tlbe_ref }
%struct.tlbe_ref = type { i32 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i32, %struct.kvm_book3e_206_tlb_entry*)* @kvmppc_e500_tlb0_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_tlb0_map(%struct.kvmppc_vcpu_e500* %0, i32 %1, %struct.kvm_book3e_206_tlb_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %8 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %9 = alloca %struct.tlbe_ref*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_book3e_206_tlb_entry* %2, %struct.kvm_book3e_206_tlb_entry** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500* %13, i32 0, i32 %14)
  store %struct.kvm_book3e_206_tlb_entry* %15, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %16 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %17 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.tlbe_ref* %24, %struct.tlbe_ref** %9, align 8
  %25 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %26 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %27 = call i32 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry* %26)
  %28 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %29 = call i32 @get_tlb_raddr(%struct.kvm_book3e_206_tlb_entry* %28)
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %33 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %7, align 8
  %34 = load %struct.tlbe_ref*, %struct.tlbe_ref** %9, align 8
  %35 = call i32 @kvmppc_e500_shadow_map(%struct.kvmppc_vcpu_e500* %25, i32 %27, i32 %31, %struct.kvm_book3e_206_tlb_entry* %32, i32 0, %struct.kvm_book3e_206_tlb_entry* %33, %struct.tlbe_ref* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %42 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %43 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @write_stlbe(%struct.kvmppc_vcpu_e500* %41, %struct.kvm_book3e_206_tlb_entry* %42, %struct.kvm_book3e_206_tlb_entry* %43, i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %38
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_shadow_map(%struct.kvmppc_vcpu_e500*, i32, i32, %struct.kvm_book3e_206_tlb_entry*, i32, %struct.kvm_book3e_206_tlb_entry*, %struct.tlbe_ref*) #1

declare dso_local i32 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @get_tlb_raddr(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @write_stlbe(%struct.kvmppc_vcpu_e500*, %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
