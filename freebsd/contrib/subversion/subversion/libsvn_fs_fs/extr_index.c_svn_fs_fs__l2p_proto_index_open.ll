; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__l2p_proto_index_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__l2p_proto_index_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_APPEND = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__l2p_proto_index_open(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @APR_READ, align 4
  %10 = load i32, i32* @APR_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @APR_CREATE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @APR_APPEND, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @APR_BUFFERED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @APR_OS_DEFAULT, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @svn_io_file_open(i32** %7, i8* %8, i32 %17, i32 %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %22
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
