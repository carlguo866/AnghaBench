; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_term.c_win_new_shellsize.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_term.c_win_new_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@win_new_shellsize.old_Rows = internal global i32 0, align 4
@win_new_shellsize.old_Columns = internal global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@p_window = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @win_new_shellsize() #0 {
  %1 = load i32, i32* @win_new_shellsize.old_Rows, align 4
  %2 = load i32, i32* @Rows, align 4
  %3 = icmp ne i32 %1, %2
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @win_new_shellsize.old_Columns, align 4
  %6 = load i32, i32* @Columns, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @ui_new_shellsize()
  br label %10

10:                                               ; preds = %8, %4
  %11 = load i32, i32* @win_new_shellsize.old_Rows, align 4
  %12 = load i32, i32* @Rows, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* @p_window, align 4
  %16 = load i32, i32* @win_new_shellsize.old_Rows, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @win_new_shellsize.old_Rows, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @Rows, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* @p_window, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @Rows, align 4
  store i32 %26, i32* @win_new_shellsize.old_Rows, align 4
  %27 = call i32 (...) @shell_new_rows()
  br label %28

28:                                               ; preds = %25, %10
  %29 = load i32, i32* @win_new_shellsize.old_Columns, align 4
  %30 = load i32, i32* @Columns, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @Columns, align 4
  store i32 %33, i32* @win_new_shellsize.old_Columns, align 4
  br label %34

34:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @ui_new_shellsize(...) #1

declare dso_local i32 @shell_new_rows(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
