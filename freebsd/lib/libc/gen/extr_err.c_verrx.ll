; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_err.c_verrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_err.c_verrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err_file = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verrx(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @err_file, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 @err_set_file(i32* null)
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i32*, i32** @err_file, align 8
  %13 = call i8* (...) @_getprogname()
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32*, i32** @err_file, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @vfprintf(i32* %18, i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i32*, i32** @err_file, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br i1 true, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @err_exit(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable
}

declare dso_local i32 @err_set_file(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_getprogname(...) #1

declare dso_local i32 @vfprintf(i32*, i8*, i32) #1

declare dso_local i32 @err_exit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
