; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_output_defaults(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_output_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.obs_output_info* @find_output(i8* %4)
  store %struct.obs_output_info* %5, %struct.obs_output_info** %3, align 8
  %6 = load %struct.obs_output_info*, %struct.obs_output_info** %3, align 8
  %7 = icmp ne %struct.obs_output_info* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.obs_output_info*, %struct.obs_output_info** %3, align 8
  %10 = call i32* @get_defaults(%struct.obs_output_info* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32* [ %10, %8 ], [ null, %11 ]
  ret i32* %13
}

declare dso_local %struct.obs_output_info* @find_output(i8*) #1

declare dso_local i32* @get_defaults(%struct.obs_output_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
