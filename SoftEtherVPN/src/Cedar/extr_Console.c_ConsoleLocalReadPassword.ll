; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleLocalReadPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleLocalReadPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i32] [i32 80, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 62, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 42, i32 42, i32 42, i32 42, i32 42, i32 42, i32 42, i32 42, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CON_USER_CANCEL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ConsoleLocalReadPassword(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %32

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8* bitcast ([10 x i32]* @.str to i8*), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @UniPrint(i8* bitcast ([3 x i32]* @.str.1 to i8*), i8* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @ConsoleWriteOutFile(i32* %17, i8* %18, i32 0)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %21 = call i64 @PasswordPrompt(i8* %20, i32 64)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ConsoleWriteOutFile(i32* %24, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32 1)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %27 = call i8* @CopyStr(i8* %26)
  store i8* %27, i8** %3, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @ConsoleWriteOutFile(i32* %29, i8* %30, i32 1)
  store i8* null, i8** %3, align 8
  br label %32

32:                                               ; preds = %28, %23, %9
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i32 @UniPrint(i8*, i8*) #1

declare dso_local i32 @ConsoleWriteOutFile(i32*, i8*, i32) #1

declare dso_local i64 @PasswordPrompt(i8*, i32) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i8* @_UU(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
