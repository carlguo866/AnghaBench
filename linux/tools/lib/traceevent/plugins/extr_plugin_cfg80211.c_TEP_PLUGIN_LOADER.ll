; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_cfg80211.c_TEP_PLUGIN_LOADER.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_cfg80211.c_TEP_PLUGIN_LOADER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@process___le16_to_cpup = common dso_local global i32 0, align 4
@TEP_FUNC_ARG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"__le16_to_cpup\00", align 1
@TEP_FUNC_ARG_PTR = common dso_local global i32 0, align 4
@TEP_FUNC_ARG_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TEP_PLUGIN_LOADER(%struct.tep_handle* %0) #0 {
  %2 = alloca %struct.tep_handle*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %2, align 8
  %3 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %4 = load i32, i32* @process___le16_to_cpup, align 4
  %5 = load i32, i32* @TEP_FUNC_ARG_INT, align 4
  %6 = load i32, i32* @TEP_FUNC_ARG_PTR, align 4
  %7 = load i32, i32* @TEP_FUNC_ARG_VOID, align 4
  %8 = call i32 @tep_register_print_function(%struct.tep_handle* %3, i32 %4, i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  ret i32 0
}

declare dso_local i32 @tep_register_print_function(%struct.tep_handle*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
