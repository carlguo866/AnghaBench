; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree-cache.c_git_tree_cache_invalidate_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree-cache.c_git_tree_cache_invalidate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_tree_cache_invalidate_path(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  br label %14

14:                                               ; preds = %31, %11
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %36

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call %struct.TYPE_5__* @find_child(%struct.TYPE_5__* %24, i8* %25, i8* %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %3, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %5, align 8
  br label %14

36:                                               ; preds = %10, %30, %22, %14
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_5__* @find_child(%struct.TYPE_5__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
