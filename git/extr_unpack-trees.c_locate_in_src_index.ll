; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_locate_in_src_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_locate_in_src_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { %struct.index_state* }
%struct.index_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.unpack_trees_options*)* @locate_in_src_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_in_src_index(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %8 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %9 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %8, i32 0, i32 0
  %10 = load %struct.index_state*, %struct.index_state** %9, align 8
  store %struct.index_state* %10, %struct.index_state** %5, align 8
  %11 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %12 = call i32 @ce_namelen(%struct.cache_entry* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.index_state*, %struct.index_state** %5, align 8
  %14 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %15 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @index_name_pos(%struct.index_state* %13, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 -1, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
