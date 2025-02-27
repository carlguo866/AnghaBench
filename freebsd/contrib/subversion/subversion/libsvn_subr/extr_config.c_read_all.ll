; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_read_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_read_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i8*, i8*, i32*)* @read_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_all(i32** %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %6
  %18 = load i64, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = call i32 @svn_config_merge(i32* %22, i8* %23, i64 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  br label %37

27:                                               ; preds = %17
  %28 = load i32**, i32*** %7, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* @FALSE, align 8
  %31 = load i64, i64* @FALSE, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @svn_config_read3(i32** %28, i8* %29, i64 %30, i64 %31, i64 %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %27, %20
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* @FALSE, align 8
  %49 = call i32 @svn_config_merge(i32* %46, i8* %47, i64 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %61

51:                                               ; preds = %41
  %52 = load i32**, i32*** %7, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* @FALSE, align 8
  %55 = load i64, i64* @FALSE, align 8
  %56 = load i64, i64* @FALSE, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @svn_config_read3(i32** %52, i8* %53, i64 %54, i64 %55, i64 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %51, %44
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32**, i32*** %7, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = load i64, i64* @FALSE, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @svn_config_create2(i32** %66, i64 %67, i64 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_merge(i32*, i8*, i64) #1

declare dso_local i32 @svn_config_read3(i32**, i8*, i64, i64, i64, i32*) #1

declare dso_local i32 @svn_config_create2(i32**, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
