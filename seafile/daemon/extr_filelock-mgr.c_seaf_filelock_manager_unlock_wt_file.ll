; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_seaf_filelock_manager_unlock_wt_file.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_seaf_filelock_manager_unlock_wt_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_5__* null, align 8
@SEAF_PATH_PERM_RW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seaf_filelock_manager_unlock_wt_file(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_4__* @seaf_repo_manager_get_repo(i32 %11, i8* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @g_build_filename(i32 %20, i8* %21, i32* null)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @seaf_util_exists(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @SEAF_PATH_PERM_RW, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @seaf_set_path_permission(i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @g_free(i8* %32)
  br label %34

34:                                               ; preds = %31, %16
  ret void
}

declare dso_local %struct.TYPE_4__* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i64 @seaf_util_exists(i8*) #1

declare dso_local i32 @seaf_set_path_permission(i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
