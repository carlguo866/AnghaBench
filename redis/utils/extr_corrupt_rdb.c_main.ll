; ModuleID = '/home/carl/AnghaBench/redis/utils/extr_corrupt_rdb.c_main.c'
source_filename = "/home/carl/AnghaBench/redis/utils/extr_corrupt_rdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Usage: <filename> <cycles>\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Writing %d bytes at offset %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %2
  %21 = call i32 @time(i32* null)
  %22 = call i32 @srand(i32 %21)
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @O_RDWR, align 4
  %32 = call i32 @open(i8* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %20
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @fstat(i32 %39, %struct.stat* %6)
  br label %41

41:                                               ; preds = %67, %38
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = call i32 (...) @rand()
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %46, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %11, align 8
  %51 = call i32 (...) @rand()
  %52 = srem i32 %51, 31
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %64, %45
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = call i32 (...) @rand()
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %54

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* @SEEK_SET, align 4
  %71 = call i32 @lseek(i32 %68, i64 %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @write(i32 %75, i8* %76, i32 %77)
  br label %41

79:                                               ; preds = %41
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
