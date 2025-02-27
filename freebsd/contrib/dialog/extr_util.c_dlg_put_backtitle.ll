; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_put_backtitle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_put_backtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@A_NORMAL = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@screen_attr = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_put_backtitle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %49

6:                                                ; preds = %0
  %7 = load i32, i32* @A_NORMAL, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %9 = call i32 @dlg_count_columns(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @stdscr, align 4
  %11 = load i32, i32* @screen_attr, align 4
  %12 = call i32 @dlg_attrset(i32 %10, i32 %11)
  %13 = load i32, i32* @stdscr, align 4
  %14 = call i32 @wmove(i32 %13, i32 0, i32 1)
  %15 = load i32, i32* @stdscr, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %17 = load i32, i32* @COLS, align 4
  %18 = sub nsw i32 %17, 2
  %19 = call i32 @dlg_print_text(i32 %15, i32* %16, i32 %18, i32* %2)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %29, %6
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @COLS, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @stdscr, align 4
  %28 = call i32 @waddch(i32 %27, i8 signext 32)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %20

32:                                               ; preds = %20
  %33 = load i32, i32* @stdscr, align 4
  %34 = call i32 @wmove(i32 %33, i32 1, i32 1)
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %45, %32
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @COLS, align 4
  %38 = sub nsw i32 %37, 2
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @stdscr, align 4
  %42 = load i32, i32* @ACS_HLINE, align 4
  %43 = call signext i8 @dlg_boxchar(i32 %42)
  %44 = call i32 @waddch(i32 %41, i8 signext %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %35

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %0
  %50 = load i32, i32* @stdscr, align 4
  %51 = call i32 @wnoutrefresh(i32 %50)
  ret void
}

declare dso_local i32 @dlg_count_columns(i32*) #1

declare dso_local i32 @dlg_attrset(i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @dlg_print_text(i32, i32*, i32, i32*) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

declare dso_local signext i8 @dlg_boxchar(i32) #1

declare dso_local i32 @wnoutrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
