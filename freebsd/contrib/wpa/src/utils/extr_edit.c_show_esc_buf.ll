; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_show_esc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_show_esc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"\0DESC buffer '%s' c='%c' [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i32)* @show_esc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_esc_buf(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @edit_clear_line()
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %8, i8 signext %9, i32 %10)
  %12 = call i32 (...) @edit_redraw()
  ret void
}

declare dso_local i32 @edit_clear_line(...) #1

declare dso_local i32 @printf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @edit_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
