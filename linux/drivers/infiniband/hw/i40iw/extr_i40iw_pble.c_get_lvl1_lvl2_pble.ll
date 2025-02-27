; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_get_lvl1_lvl2_pble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_get_lvl1_lvl2_pble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_hmc_pble_rsrc = type { i32 }
%struct.i40iw_pble_alloc = type { i64 }
%struct.gen_pool = type { i32 }

@PBLE_PER_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*, %struct.gen_pool*)* @get_lvl1_lvl2_pble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lvl1_lvl2_pble(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_pble_alloc* %2, %struct.gen_pool* %3) #0 {
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %7 = alloca %struct.i40iw_pble_alloc*, align 8
  %8 = alloca %struct.gen_pool*, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  store %struct.i40iw_pble_alloc* %2, %struct.i40iw_pble_alloc** %7, align 8
  store %struct.gen_pool* %3, %struct.gen_pool** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %11 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %12 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %13 = call i32 @get_lvl1_pble(%struct.i40iw_sc_dev* %10, %struct.i40iw_hmc_pble_rsrc* %11, %struct.i40iw_pble_alloc* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %18 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PBLE_PER_PAGE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %24 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %25 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %26 = call i32 @get_lvl2_pble(%struct.i40iw_hmc_pble_rsrc* %23, %struct.i40iw_pble_alloc* %24, %struct.gen_pool* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %22, %16, %4
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @get_lvl1_pble(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*) #1

declare dso_local i32 @get_lvl2_pble(%struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*, %struct.gen_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
