; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_terminal-win.c_reopen_console_handle.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_terminal-win.c_reopen_console_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"CONOUT$\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@_IONBF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @reopen_console_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reopen_console_handle(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @GetStdHandle(i32 %7)
  %9 = call i64 @is_a_console(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @freopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @fileno(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dup2(i32 %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @_IONBF, align 4
  %20 = call i32 @setvbuf(i32* %18, i32* null, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @is_a_console(i32) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @freopen(i8*, i8*, i32*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
