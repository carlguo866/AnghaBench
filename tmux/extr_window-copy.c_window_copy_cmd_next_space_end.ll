; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_next_space_end.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_next_space_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_next_space_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_next_space_end(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %5 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %6 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %5, i32 0, i32 0
  %7 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  store %struct.window_mode_entry* %7, %struct.window_mode_entry** %3, align 8
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %9 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %17, %1
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %16 = call i32 @window_copy_cursor_next_word_end(%struct.window_mode_entry* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %4, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %21
}

declare dso_local i32 @window_copy_cursor_next_word_end(%struct.window_mode_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
