; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_read-tree.c_list_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_read-tree.c_list_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.object_id = type { i32 }

@nr_trees = common dso_local global i64 0, align 8
@MAX_UNPACK_TREES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"I cannot read more than %d trees\00", align 1
@trees = common dso_local global %struct.tree** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @list_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_tree(%struct.object_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.tree*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %5 = load i64, i64* @nr_trees, align 8
  %6 = load i64, i64* @MAX_UNPACK_TREES, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @MAX_UNPACK_TREES, align 8
  %10 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.object_id*, %struct.object_id** %3, align 8
  %13 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %12)
  store %struct.tree* %13, %struct.tree** %4, align 8
  %14 = load %struct.tree*, %struct.tree** %4, align 8
  %15 = icmp ne %struct.tree* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %23

17:                                               ; preds = %11
  %18 = load %struct.tree*, %struct.tree** %4, align 8
  %19 = load %struct.tree**, %struct.tree*** @trees, align 8
  %20 = load i64, i64* @nr_trees, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @nr_trees, align 8
  %22 = getelementptr inbounds %struct.tree*, %struct.tree** %19, i64 %20
  store %struct.tree* %18, %struct.tree** %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @die(i8*, i64) #1

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
