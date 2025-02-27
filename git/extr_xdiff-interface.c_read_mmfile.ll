; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_read_mmfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_read_mmfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Could not stat %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Could not open %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Could not read %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_mmfile(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @error_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @error_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @xsize_t(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i64 [ %29, %28 ], [ 1, %30 ]
  %33 = call i32 @xmalloc(i64 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @fread(i32 %41, i64 %42, i32 1, i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %38, %31
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %46, %19, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i32 @fread(i32, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
