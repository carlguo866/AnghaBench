; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_mmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_mmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_e500 = type { %struct.tlbe_priv** }
%struct.tlbe_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }

@E500_TLB_VALID = common dso_local global i32 0, align 4
@BOOK3E_PAGESZ_4K = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_mmu_map(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %10 = alloca %struct.tlbe_priv*, align 8
  %11 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %12 = alloca %struct.kvm_book3e_206_tlb_entry, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %16)
  store %struct.kvmppc_vcpu_e500* %17, %struct.kvmppc_vcpu_e500** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @tlbsel_of(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @esel_of(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500* %22, i32 %23, i32 %24)
  store %struct.kvm_book3e_206_tlb_entry* %25, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %26 = load i32, i32* %13, align 4
  switch i32 %26, label %71 [
    i32 0, label %27
    i32 1, label %61
  ]

27:                                               ; preds = %4
  %28 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %9, align 8
  %29 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %28, i32 0, i32 0
  %30 = load %struct.tlbe_priv**, %struct.tlbe_priv*** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tlbe_priv*, %struct.tlbe_priv** %30, i64 %32
  %34 = load %struct.tlbe_priv*, %struct.tlbe_priv** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.tlbe_priv, %struct.tlbe_priv* %34, i64 %36
  store %struct.tlbe_priv* %37, %struct.tlbe_priv** %10, align 8
  %38 = load %struct.tlbe_priv*, %struct.tlbe_priv** %10, align 8
  %39 = getelementptr inbounds %struct.tlbe_priv, %struct.tlbe_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @E500_TLB_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %27
  %46 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %9, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @kvmppc_e500_tlb0_map(%struct.kvmppc_vcpu_e500* %46, i32 %47, %struct.kvm_book3e_206_tlb_entry* %12)
  br label %60

49:                                               ; preds = %27
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %51 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %52 = load i32, i32* @BOOK3E_PAGESZ_4K, align 4
  %53 = load %struct.tlbe_priv*, %struct.tlbe_priv** %10, align 8
  %54 = getelementptr inbounds %struct.tlbe_priv, %struct.tlbe_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @kvmppc_e500_setup_stlbe(%struct.kvm_vcpu* %50, %struct.kvm_book3e_206_tlb_entry* %51, i32 %52, %struct.TYPE_2__* %54, i32 %55, %struct.kvm_book3e_206_tlb_entry* %12)
  %57 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %9, align 8
  %58 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %59 = call i32 @write_stlbe(%struct.kvmppc_vcpu_e500* %57, %struct.kvm_book3e_206_tlb_entry* %58, %struct.kvm_book3e_206_tlb_entry* %12, i32 0, i32 0)
  br label %60

60:                                               ; preds = %49, %45
  br label %73

61:                                               ; preds = %4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PAGE_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %9, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @kvmppc_e500_tlb1_map(%struct.kvmppc_vcpu_e500* %65, i32 %66, i32 %67, %struct.kvm_book3e_206_tlb_entry* %68, %struct.kvm_book3e_206_tlb_entry* %12, i32 %69)
  br label %73

71:                                               ; preds = %4
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %71, %61, %60
  ret void
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @tlbsel_of(i32) #1

declare dso_local i32 @esel_of(i32) #1

declare dso_local %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_tlb0_map(%struct.kvmppc_vcpu_e500*, i32, %struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @kvmppc_e500_setup_stlbe(%struct.kvm_vcpu*, %struct.kvm_book3e_206_tlb_entry*, i32, %struct.TYPE_2__*, i32, %struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @write_stlbe(%struct.kvmppc_vcpu_e500*, %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_tlb1_map(%struct.kvmppc_vcpu_e500*, i32, i32, %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
