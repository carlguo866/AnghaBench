; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }

@FILEARGS_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fileargs_open(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FILEARGS_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %65

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @fileargs_get_fd_cache(%struct.TYPE_6__* %32, i8* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32* @fileargs_fetch(%struct.TYPE_6__* %40, i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %65

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @nvlist_take_descriptor(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @nvlist_take_string(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @fileargs_set_cache(%struct.TYPE_6__* %55, i32* %56)
  br label %61

58:                                               ; preds = %46
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @nvlist_destroy(i32* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %45, %37, %29, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fileargs_get_fd_cache(%struct.TYPE_6__*, i8*) #1

declare dso_local i32* @fileargs_fetch(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @nvlist_take_descriptor(i32*, i8*) #1

declare dso_local i8* @nvlist_take_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fileargs_set_cache(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
