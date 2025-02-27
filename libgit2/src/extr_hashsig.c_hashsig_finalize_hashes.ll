; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_hashsig.c_hashsig_finalize_hashes.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_hashsig.c_hashsig_finalize_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@HASHSIG_HEAP_MIN_SIZE = common dso_local global i64 0, align 8
@GIT_HASHSIG_ALLOW_SMALL_FILES = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"file too small for similarity signature calculation\00", align 1
@GIT_EBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @hashsig_finalize_hashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashsig_finalize_hashes(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HASHSIG_HEAP_MIN_SIZE, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GIT_HASHSIG_ALLOW_SMALL_FILES, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %19 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %10, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = call i32 @hashsig_heap_sort(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @hashsig_heap_sort(%struct.TYPE_5__* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @hashsig_heap_sort(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
