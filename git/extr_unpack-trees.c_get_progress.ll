; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_get_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_get_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.progress = type { i32 }
%struct.unpack_trees_options = type { i32, i32, %struct.index_state }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@CE_UPDATE = common dso_local global i32 0, align 4
@CE_WT_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Updating files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.progress* (%struct.unpack_trees_options*)* @get_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.progress* @get_progress(%struct.unpack_trees_options* %0) #0 {
  %2 = alloca %struct.progress*, align 8
  %3 = alloca %struct.unpack_trees_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %9 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %8, i32 0, i32 2
  store %struct.index_state* %9, %struct.index_state** %6, align 8
  %10 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %11 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %16 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store %struct.progress* null, %struct.progress** %2, align 8
  br label %54

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.index_state*, %struct.index_state** %6, align 8
  %24 = getelementptr inbounds %struct.index_state, %struct.index_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.index_state*, %struct.index_state** %6, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 1
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %30, i64 %32
  %34 = load %struct.cache_entry*, %struct.cache_entry** %33, align 8
  store %struct.cache_entry* %34, %struct.cache_entry** %7, align 8
  %35 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CE_UPDATE, align 4
  %39 = load i32, i32* @CE_WT_REMOVE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %21

50:                                               ; preds = %21
  %51 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = call %struct.progress* @start_delayed_progress(i32 %51, i32 %52)
  store %struct.progress* %53, %struct.progress** %2, align 8
  br label %54

54:                                               ; preds = %50, %19
  %55 = load %struct.progress*, %struct.progress** %2, align 8
  ret %struct.progress* %55
}

declare dso_local %struct.progress* @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
