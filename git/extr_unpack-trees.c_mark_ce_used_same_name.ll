; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_mark_ce_used_same_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_mark_ce_used_same_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, %struct.unpack_trees_options*)* @mark_ce_used_same_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ce_used_same_name(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %9 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %10 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 0
  %11 = load %struct.index_state*, %struct.index_state** %10, align 8
  store %struct.index_state* %11, %struct.index_state** %5, align 8
  %12 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %13 = call i32 @ce_namelen(%struct.cache_entry* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %15 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %16 = call i32 @locate_in_src_index(%struct.cache_entry* %14, %struct.unpack_trees_options* %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.index_state*, %struct.index_state** %5, align 8
  %20 = getelementptr inbounds %struct.index_state, %struct.index_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load %struct.index_state*, %struct.index_state** %5, align 8
  %25 = getelementptr inbounds %struct.index_state, %struct.index_state* %24, i32 0, i32 1
  %26 = load %struct.cache_entry**, %struct.cache_entry*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %26, i64 %28
  %30 = load %struct.cache_entry*, %struct.cache_entry** %29, align 8
  store %struct.cache_entry* %30, %struct.cache_entry** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %33 = call i32 @ce_namelen(%struct.cache_entry* %32)
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %23
  %36 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @memcmp(i32 %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35, %23
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %48 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %49 = call i32 @mark_ce_used(%struct.cache_entry* %47, %struct.unpack_trees_options* %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @locate_in_src_index(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mark_ce_used(%struct.cache_entry*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
