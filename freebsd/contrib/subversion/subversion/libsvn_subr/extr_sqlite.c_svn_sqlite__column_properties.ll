; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__column_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__column_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_sqlite__column_properties(i32** %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i8* @svn_sqlite__column_blob(i32* %14, i32 %15, i32* %12, i32* null)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32**, i32*** %7, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %21, i32** %6, align 8
  br label %32

22:                                               ; preds = %5
  %23 = load i32**, i32*** %7, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @svn_skel__parse(i8* %24, i32 %25, i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @svn_skel__parse_proplist(i32** %23, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %22, %19
  %33 = load i32*, i32** %6, align 8
  ret i32* %33
}

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_skel__parse_proplist(i32**, i32, i32*) #1

declare dso_local i32 @svn_skel__parse(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
