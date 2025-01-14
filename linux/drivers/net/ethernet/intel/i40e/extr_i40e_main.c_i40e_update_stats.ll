; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.i40e_vsi** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_update_stats(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 0
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  store %struct.i40e_pf* %6, %struct.i40e_pf** %3, align 8
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 1
  %10 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %9, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %10, i64 %13
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  %16 = icmp eq %struct.i40e_vsi* %7, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %19 = call i32 @i40e_update_pf_stats(%struct.i40e_pf* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %22 = call i32 @i40e_update_vsi_stats(%struct.i40e_vsi* %21)
  ret void
}

declare dso_local i32 @i40e_update_pf_stats(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_update_vsi_stats(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
