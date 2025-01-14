; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_getfinalpath_w.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_getfinalpath_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@GIT_WIN_PATH_UTF16 = common dso_local global i64 0, align 8
@FILE_NAME_NORMALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @getfinalpath_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfinalpath_w(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @GENERIC_READ, align 4
  %10 = load i32, i32* @FILE_SHARE_READ, align 4
  %11 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @OPEN_EXISTING, align 4
  %14 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %15 = call i64 @CreateFileW(i32* %8, i32 %9, i32 %12, i32* null, i32 %13, i32 %14, i32* null)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* @GIT_WIN_PATH_UTF16, align 8
  %24 = load i32, i32* @FILE_NAME_NORMALIZED, align 4
  %25 = call i64 @GetFinalPathNameByHandleW(i64 %21, i32 %22, i64 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @CloseHandle(i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @GIT_WIN_PATH_UTF16, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %20
  store i32 -1, i32* %3, align 4
  br label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @git_win32_path_remove_namespace(i32 %36, i64 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %34, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetFinalPathNameByHandleW(i64, i32, i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @git_win32_path_remove_namespace(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
