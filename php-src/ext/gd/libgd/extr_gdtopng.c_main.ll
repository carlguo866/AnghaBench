; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdtopng.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdtopng.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Usage: gdtopng filename.gd filename.png\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Input file does not exist!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Input is not in GD format!\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Output file cannot be written to!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @gdImageCreateFromGd(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %26
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @gdImageDestroy(i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @gdImagePng(i32 %51, i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @gdImageDestroy(i32 %56)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @gdImageCreateFromGd(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @gdImageDestroy(i32) #1

declare dso_local i32 @gdImagePng(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
