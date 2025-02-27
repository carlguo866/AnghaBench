; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_get_lvds_dvo_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_get_lvds_dvo_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_dvo_timing = type opaque
%struct.bdb_lvds_lfp_data = type { i64 }
%struct.bdb_lvds_lfp_data_ptrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lvds_dvo_timing* (%struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data_ptrs*, i32)* @get_lvds_dvo_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lvds_dvo_timing* @get_lvds_dvo_timing(%struct.bdb_lvds_lfp_data* %0, %struct.bdb_lvds_lfp_data_ptrs* %1, i32 %2) #0 {
  %4 = alloca %struct.bdb_lvds_lfp_data*, align 8
  %5 = alloca %struct.bdb_lvds_lfp_data_ptrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.bdb_lvds_lfp_data* %0, %struct.bdb_lvds_lfp_data** %4, align 8
  store %struct.bdb_lvds_lfp_data_ptrs* %1, %struct.bdb_lvds_lfp_data_ptrs** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %5, align 8
  %11 = getelementptr inbounds %struct.bdb_lvds_lfp_data_ptrs, %struct.bdb_lvds_lfp_data_ptrs* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %5, align 8
  %17 = getelementptr inbounds %struct.bdb_lvds_lfp_data_ptrs, %struct.bdb_lvds_lfp_data_ptrs* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %15, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %5, align 8
  %24 = getelementptr inbounds %struct.bdb_lvds_lfp_data_ptrs, %struct.bdb_lvds_lfp_data_ptrs* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %5, align 8
  %30 = getelementptr inbounds %struct.bdb_lvds_lfp_data_ptrs, %struct.bdb_lvds_lfp_data_ptrs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %28, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data** %4, align 8
  %37 = getelementptr inbounds %struct.bdb_lvds_lfp_data, %struct.bdb_lvds_lfp_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to %struct.lvds_dvo_timing*
  ret %struct.lvds_dvo_timing* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
