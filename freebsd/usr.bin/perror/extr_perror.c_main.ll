; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/perror/extr_perror.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/perror/extr_perror.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_MESSAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @LC_MESSAGES, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  br label %15

15:                                               ; preds = %13, %2
  store i64 0, i64* @errno, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strtol(i8* %18, i8** %6, i32 0)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @errno, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @err(i32 1, i32* null)
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @strerror(i64 %25)
  store i8* %26, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @err(i32 1, i32* null)
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

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
