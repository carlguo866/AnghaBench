; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_file_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_file_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempted to get length of a *non*-file node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dag_file_length(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @svn_node_file, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %15 = call i32* @svn_error_createf(i32 %14, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32* @svn_fs_x__file_length(i32* %17, %struct.TYPE_5__* %20)
  store i32* %21, i32** %3, align 8
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

declare dso_local i32* @svn_error_createf(i32, i32*, i8*) #1

declare dso_local i32* @svn_fs_x__file_length(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
