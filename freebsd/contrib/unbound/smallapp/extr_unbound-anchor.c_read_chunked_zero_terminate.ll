; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_chunked_zero_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_chunked_zero_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not read from https\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"chunked data is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64*)* @read_chunked_zero_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_chunked_zero_terminate(i32* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @do_chunked_read(i32* %10)
  store i32* %11, i32** %6, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @verb, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  store i8* null, i8** %3, align 8
  br label %64

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @BIO_get_mem_data(i32* %21, i8** %8)
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @verb, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @verb, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  store i8* null, i8** %3, align 8
  br label %64

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, 1
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @malloc(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @verb, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  store i8* null, i8** %3, align 8
  br label %64

56:                                               ; preds = %41
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @BIO_free(i32* %61)
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %56, %55, %40, %19
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i32* @do_chunked_read(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
