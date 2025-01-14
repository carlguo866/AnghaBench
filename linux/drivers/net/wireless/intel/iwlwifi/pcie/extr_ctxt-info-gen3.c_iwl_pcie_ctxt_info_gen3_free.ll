; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_ctxt-info-gen3.c_iwl_pcie_ctxt_info_gen3_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_ctxt-info-gen3.c_iwl_pcie_ctxt_info_gen3_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32*, i64, i32*, i64, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_ctxt_info_gen3_free(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dma_free_coherent(i32 %14, i32 4, i32* %17, i64 %20)
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %27 = call i32 @iwl_pcie_ctxt_info_free_fw_img(%struct.iwl_trans* %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dma_free_coherent(i32 %30, i32 4, i32* %33, i64 %36)
  %38 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %43 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dma_free_coherent(i32 %44, i32 4, i32* %47, i64 %50)
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @iwl_pcie_ctxt_info_free_fw_img(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
