; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_fs_change_rev_prop3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_fs_change_rev_prop3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_change_rev_prop3(i32* %0, i32 %1, i8* %2, i8* %3, i32* %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i8*, i8** %19, align 8
  %30 = load i32*, i32** %20, align 8
  %31 = call i32* @svn_repos_fs_change_rev_prop4(i32* %21, i32 %22, i8* %23, i8* %24, i32* null, i32* %25, i32 %26, i32 %27, i32 %28, i8* %29, i32* %30)
  ret i32* %31
}

declare dso_local i32* @svn_repos_fs_change_rev_prop4(i32*, i32, i8*, i8*, i32*, i32*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
