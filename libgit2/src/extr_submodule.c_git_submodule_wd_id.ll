; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_wd_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_wd_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GIT_SUBMODULE_STATUS__WD_OID_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @git_submodule_wd_id(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i32 @git_submodule_open_bare(i32** %4, %struct.TYPE_5__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @git_repository_free(i32* %18)
  br label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @git_error_clear()
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32* %32, i32** %2, align 8
  br label %34

33:                                               ; preds = %23
  store i32* null, i32** %2, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @git_submodule_open_bare(i32**, %struct.TYPE_5__*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
