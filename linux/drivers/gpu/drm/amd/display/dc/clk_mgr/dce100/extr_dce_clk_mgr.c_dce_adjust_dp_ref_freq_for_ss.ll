; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_adjust_dp_ref_freq_for_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_adjust_dp_ref_freq_for_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i64, i32, i64 }
%struct.fixed31_32 = type { i32 }

@dc_fixpt_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_adjust_dp_ref_freq_for_ss(%struct.clk_mgr_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.fixed31_32, align 4
  %7 = alloca %struct.fixed31_32, align 4
  %8 = alloca %struct.fixed31_32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %10 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %15 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %20 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %23 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dc_fixpt_from_fraction(i32 %21, i64 %24)
  %26 = call i32 @dc_fixpt_div_int(i32 %25, i32 200)
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @dc_fixpt_one, align 4
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dc_fixpt_sub(i32 %28, i32 %30)
  %32 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.fixed31_32* %5 to i8*
  %34 = bitcast %struct.fixed31_32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dc_fixpt_mul_int(i32 %37, i32 %35)
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.fixed31_32* %6 to i8*
  %41 = bitcast %struct.fixed31_32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dc_fixpt_floor(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %18, %13, %2
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_fraction(i32, i64) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
