; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_open_term.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_open_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @open_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_term(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @STDERR_FILENO, align 4
  %5 = call i32 @isatty(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @STDERR_FILENO, align 4
  %9 = call i8* @ttyname(i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @STDOUT_FILENO, align 4
  %13 = call i32 @isatty(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @STDOUT_FILENO, align 4
  %17 = call i8* @ttyname(i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @STDIN_FILENO, align 4
  %21 = call i32 @isatty(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @STDIN_FILENO, align 4
  %25 = call i8* @ttyname(i32 %24)
  store i8* %25, i8** %3, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %15
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @xstrdup(i8* %31)
  %33 = load i8**, i8*** %2, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = call i32 @open(i8* %34, i32 %35)
  ret i32 %36
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
