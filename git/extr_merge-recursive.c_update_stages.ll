; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_update_stages.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_update_stages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.diff_filespec = type { i32 }

@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_SKIP_DFCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*)* @update_stages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_stages(%struct.merge_options* %0, i8* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.merge_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca %struct.diff_filespec*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %9, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %10, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %11, align 8
  store i32 1, i32* %12, align 4
  %14 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %15 = load i32, i32* @ADD_CACHE_SKIP_DFCHECK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %21 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @remove_file_from_index(i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %67

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %32 = icmp ne %struct.diff_filespec* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @add_cacheinfo(%struct.merge_options* %34, %struct.diff_filespec* %35, i8* %36, i32 1, i32 0, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %67

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %44 = icmp ne %struct.diff_filespec* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @add_cacheinfo(%struct.merge_options* %46, %struct.diff_filespec* %47, i8* %48, i32 2, i32 0, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %67

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %56 = icmp ne %struct.diff_filespec* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %59 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @add_cacheinfo(%struct.merge_options* %58, %struct.diff_filespec* %59, i8* %60, i32 3, i32 0, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %67

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %64, %52, %40, %28
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @remove_file_from_index(i32, i8*) #1

declare dso_local i64 @add_cacheinfo(%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
