; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_pin_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_pin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.snd_soc_dapm_widget* @dapm_find_widget(%struct.snd_soc_dapm_context* %7, i8* %8, i32 1)
  store %struct.snd_soc_dapm_widget* %9, %struct.snd_soc_dapm_widget** %6, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %11 = icmp ne %struct.snd_soc_dapm_widget* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.snd_soc_dapm_widget* @dapm_find_widget(%struct.snd_soc_dapm_context*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
