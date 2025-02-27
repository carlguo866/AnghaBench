; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_get_tree_descriptor.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_get_tree_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree_desc = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"unknown rev %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s is not a tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, %struct.tree_desc*, i8*)* @get_tree_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_tree_descriptor(%struct.repository* %0, %struct.tree_desc* %1, i8* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.tree_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.tree_desc* %1, %struct.tree_desc** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @repo_get_oid(%struct.repository* %9, i8* %10, %struct.object_id* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.repository*, %struct.repository** %4, align 8
  %18 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %19 = call i8* @fill_tree_descriptor(%struct.repository* %17, %struct.tree_desc* %18, %struct.object_id* %7)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i8*, i8** %8, align 8
  ret i8* %26
}

declare dso_local i64 @repo_get_oid(%struct.repository*, i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i8* @fill_tree_descriptor(%struct.repository*, %struct.tree_desc*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
