; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_ls.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32***, i64*, %struct.TYPE_6__*)* }

@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"this remote has never connected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_ls(i32*** %0, i64* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32***, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32*** %0, i32**** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @assert(%struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @GIT_ERROR_NET, align 4
  %16 = call i32 @git_error_set(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (i32***, i64*, %struct.TYPE_6__*)*, i32 (i32***, i64*, %struct.TYPE_6__*)** %21, align 8
  %23 = load i32***, i32**** %5, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 %22(i32*** %23, i64* %24, %struct.TYPE_6__* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
