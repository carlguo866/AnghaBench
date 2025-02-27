; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_AtEOSubXact_ApplyLauncher.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_AtEOSubXact_ApplyLauncher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@on_commit_stop_workers = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOSubXact_ApplyLauncher(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  br label %62

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %15
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %62

43:                                               ; preds = %31
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @list_concat(i32 %46, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %58

53:                                               ; preds = %15
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @list_free_deep(i32 %56)
  br label %58

58:                                               ; preds = %53, %43
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  %60 = call i32 @pfree(%struct.TYPE_4__* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** @on_commit_stop_workers, align 8
  br label %62

62:                                               ; preds = %58, %38, %14
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_concat(i32, i32) #1

declare dso_local i32 @list_free_deep(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
