; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-event.c_timer_cb_file.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-event.c_timer_cb_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_cb_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"watch_dir/file1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"watch_dir/file2\00", align 1
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @timer_cb_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_cb_file(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @timer_cb_called, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @timer_cb_called, align 4
  %5 = load i32, i32* @timer_cb_called, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @touch_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %14

9:                                                ; preds = %1
  %10 = call i32 @touch_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @close_cb, align 4
  %13 = call i32 @uv_close(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @touch_file(i8*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
