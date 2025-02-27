; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_get_output_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_get_output_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output_info = type { i32* (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_get_output_properties(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.obs_output_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.obs_output_info* @find_output(i8* %7)
  store %struct.obs_output_info* %8, %struct.obs_output_info** %4, align 8
  %9 = load %struct.obs_output_info*, %struct.obs_output_info** %4, align 8
  %10 = icmp ne %struct.obs_output_info* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.obs_output_info*, %struct.obs_output_info** %4, align 8
  %13 = getelementptr inbounds %struct.obs_output_info, %struct.obs_output_info* %12, i32 0, i32 0
  %14 = load i32* (i32*)*, i32* (i32*)** %13, align 8
  %15 = icmp ne i32* (i32*)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.obs_output_info*, %struct.obs_output_info** %4, align 8
  %18 = call i32* @get_defaults(%struct.obs_output_info* %17)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.obs_output_info*, %struct.obs_output_info** %4, align 8
  %20 = getelementptr inbounds %struct.obs_output_info, %struct.obs_output_info* %19, i32 0, i32 0
  %21 = load i32* (i32*)*, i32* (i32*)** %20, align 8
  %22 = call i32* %21(i32* null)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @obs_properties_apply_settings(i32* %23, i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @obs_data_release(i32* %26)
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %2, align 8
  br label %30

29:                                               ; preds = %11, %1
  store i32* null, i32** %2, align 8
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local %struct.obs_output_info* @find_output(i8*) #1

declare dso_local i32* @get_defaults(%struct.obs_output_info*) #1

declare dso_local i32 @obs_properties_apply_settings(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
