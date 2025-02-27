; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_update_extended_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_update_extended_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc_x = type { %struct.tree_desc_skip*, %struct.TYPE_4__ }
%struct.tree_desc_skip = type { i64, %struct.tree_desc_skip* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.name_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_desc_x*, %struct.name_entry*)* @update_extended_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_extended_entry(%struct.tree_desc_x* %0, %struct.name_entry* %1) #0 {
  %3 = alloca %struct.tree_desc_x*, align 8
  %4 = alloca %struct.name_entry*, align 8
  %5 = alloca %struct.tree_desc_skip*, align 8
  store %struct.tree_desc_x* %0, %struct.tree_desc_x** %3, align 8
  store %struct.name_entry* %1, %struct.name_entry** %4, align 8
  %6 = load %struct.tree_desc_x*, %struct.tree_desc_x** %3, align 8
  %7 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %12 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.tree_desc_x*, %struct.tree_desc_x** %3, align 8
  %17 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %16, i32 0, i32 1
  %18 = call i32 @update_tree_entry(%struct.TYPE_4__* %17)
  br label %34

19:                                               ; preds = %2
  %20 = call %struct.tree_desc_skip* @xmalloc(i32 16)
  store %struct.tree_desc_skip* %20, %struct.tree_desc_skip** %5, align 8
  %21 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %22 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %5, align 8
  %25 = getelementptr inbounds %struct.tree_desc_skip, %struct.tree_desc_skip* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.tree_desc_x*, %struct.tree_desc_x** %3, align 8
  %27 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %26, i32 0, i32 0
  %28 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %27, align 8
  %29 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %5, align 8
  %30 = getelementptr inbounds %struct.tree_desc_skip, %struct.tree_desc_skip* %29, i32 0, i32 1
  store %struct.tree_desc_skip* %28, %struct.tree_desc_skip** %30, align 8
  %31 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %5, align 8
  %32 = load %struct.tree_desc_x*, %struct.tree_desc_x** %3, align 8
  %33 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %32, i32 0, i32 0
  store %struct.tree_desc_skip* %31, %struct.tree_desc_skip** %33, align 8
  br label %34

34:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @update_tree_entry(%struct.TYPE_4__*) #1

declare dso_local %struct.tree_desc_skip* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
