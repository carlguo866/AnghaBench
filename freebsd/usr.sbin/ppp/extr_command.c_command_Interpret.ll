; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_command_Interpret.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_command_Interpret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@PARSE_REDUCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @command_Interpret(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* @MAXARGS, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcspn(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i8*, i8** %8, align 8
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %21, %13
  %24 = load i8*, i8** %5, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i32, i32* @MAXARGS, align 4
  %27 = load i32, i32* @PARSE_REDUCE, align 4
  %28 = call i32 @MakeArgs(i8* %24, i8** %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @MakeArgs(i8*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
