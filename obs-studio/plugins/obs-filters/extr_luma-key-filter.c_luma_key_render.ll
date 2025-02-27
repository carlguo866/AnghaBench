; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_luma-key-filter.c_luma_key_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_luma-key-filter.c_luma_key_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luma_key_filter_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@OBS_ALLOW_DIRECT_RENDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @luma_key_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luma_key_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.luma_key_filter_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.luma_key_filter_data*
  store %struct.luma_key_filter_data* %7, %struct.luma_key_filter_data** %5, align 8
  %8 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %9 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GS_RGBA, align 4
  %12 = load i32, i32* @OBS_ALLOW_DIRECT_RENDERING, align 4
  %13 = call i32 @obs_source_process_filter_begin(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %18 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %21 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gs_effect_set_float(i32 %19, i32 %22)
  %24 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %25 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %28 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gs_effect_set_float(i32 %26, i32 %29)
  %31 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %32 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %35 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gs_effect_set_float(i32 %33, i32 %36)
  %38 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %39 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %42 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gs_effect_set_float(i32 %40, i32 %43)
  %45 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %46 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %49 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @obs_source_process_filter_end(i32 %47, i32 %50, i32 0, i32 0)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @UNUSED_PARAMETER(i32* %52)
  br label %54

54:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32 @gs_effect_set_float(i32, i32) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
