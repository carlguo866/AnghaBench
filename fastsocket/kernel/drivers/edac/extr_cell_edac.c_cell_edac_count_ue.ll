; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cell_edac.c_cell_edac_count_ue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cell_edac.c_cell_edac_count_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info*, %struct.cell_edac_priv* }
%struct.csrow_info = type { i64 }
%struct.cell_edac_priv = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"ECC UE err on node %d, channel %d, ar = 0x%016llx\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32)* @cell_edac_count_ue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_edac_count_ue(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cell_edac_priv*, align 8
  %8 = alloca %struct.csrow_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 2
  %14 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %13, align 8
  store %struct.cell_edac_priv* %14, %struct.cell_edac_priv** %7, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 1
  %17 = load %struct.csrow_info*, %struct.csrow_info** %16, align 8
  %18 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %17, i64 0
  store %struct.csrow_info* %18, %struct.csrow_info** %8, align 8
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %7, align 8
  %23 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, -536870912
  %31 = lshr i64 %30, 29
  store i64 %31, i64* %9, align 8
  %32 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %7, align 8
  %33 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i64, i64* %9, align 8
  %38 = shl i64 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = or i64 %38, %40
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @PAGE_SHIFT, align 8
  %45 = lshr i64 %43, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = and i64 %46, %48
  store i64 %49, i64* %11, align 8
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %51 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %52 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %50, i64 %55, i64 %56, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i64, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
