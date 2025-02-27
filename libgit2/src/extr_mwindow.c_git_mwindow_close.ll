; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_close.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@git__mwindow_mutex = common dso_local global i32 0, align 4
@GIT_ERROR_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to lock mwindow mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_mwindow_close(%struct.TYPE_3__** %0) #0 {
  %2 = alloca %struct.TYPE_3__**, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %2, align 8
  %4 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = call i64 @git_mutex_lock(i32* @git__mwindow_mutex)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @GIT_ERROR_THREAD, align 4
  %13 = call i32 @git_error_set(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %20, align 8
  br label %21

21:                                               ; preds = %11, %14, %1
  ret void
}

declare dso_local i64 @git_mutex_lock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
