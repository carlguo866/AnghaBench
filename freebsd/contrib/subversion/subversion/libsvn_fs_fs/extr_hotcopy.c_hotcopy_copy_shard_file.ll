; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_copy_shard_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_copy_shard_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32, i32, i32*)* @hotcopy_copy_shard_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_copy_shard_file(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %6
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 %22, %23
  %25 = call i8* @apr_psprintf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i8* @svn_dirent_join(i8* %26, i8* %27, i32* %28)
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i8* @svn_dirent_join(i8* %30, i8* %31, i32* %32)
  store i8* %33, i8** %14, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = srem i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %20
  %39 = load i8*, i8** %14, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_io_make_dir_recursively(i8* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @svn_io_copy_perms(i8* %43, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %48

48:                                               ; preds = %38, %20
  br label %49

49:                                               ; preds = %48, %6
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @apr_psprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @hotcopy_io_dir_file_copy(i32* %50, i8* %51, i8* %52, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local i32 @hotcopy_io_dir_file_copy(i32*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
