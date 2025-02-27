; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__ensure_dir_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__ensure_dir_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_fs_x__ensure_dir_exists(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @APR_OS_DEFAULT, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.TYPE_8__* @svn_io_dir_make(i8* %9, i32 %10, i32* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @APR_STATUS_IS_EEXIST(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = call i32 @svn_error_clear(%struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %4, align 8
  br label %32

25:                                               ; preds = %15, %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = call i32 @SVN_ERR(%struct.TYPE_8__* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.TYPE_8__* @svn_io_copy_perms(i8* %28, i8* %29, i32* %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  br label %32

32:                                               ; preds = %25, %21
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %33
}

declare dso_local %struct.TYPE_8__* @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_io_copy_perms(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
