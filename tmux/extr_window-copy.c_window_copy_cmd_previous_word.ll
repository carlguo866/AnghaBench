; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_previous_word.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_previous_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.session*, %struct.window_mode_entry* }
%struct.session = type { i32 }
%struct.window_mode_entry = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"word-separators\00", align 1
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_previous_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_previous_word(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %7 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %8 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %7, i32 0, i32 1
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %8, align 8
  store %struct.window_mode_entry* %9, %struct.window_mode_entry** %3, align 8
  %10 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %11 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %10, i32 0, i32 0
  %12 = load %struct.session*, %struct.session** %11, align 8
  store %struct.session* %12, %struct.session** %4, align 8
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %14 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.session*, %struct.session** %4, align 8
  %17 = getelementptr inbounds %struct.session, %struct.session* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @options_get_string(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %27, %1
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @window_copy_cursor_previous_word(%struct.window_mode_entry* %24, i8* %25, i32 1)
  br label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %5, align 8
  br label %20

30:                                               ; preds = %20
  %31 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %31
}

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i32 @window_copy_cursor_previous_word(%struct.window_mode_entry*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
