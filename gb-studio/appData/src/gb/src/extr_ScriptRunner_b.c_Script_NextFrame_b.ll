; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_NextFrame_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_NextFrame_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_NextFrame_b() #0 {
  %1 = load i64, i64* @script_cmd_args_len, align 8
  %2 = add nsw i64 1, %1
  %3 = load i32, i32* @script_ptr, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %2
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* @script_ptr, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
