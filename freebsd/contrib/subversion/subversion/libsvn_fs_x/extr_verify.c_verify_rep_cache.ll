; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_verify_rep_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_verify_rep_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 (i32, i8*, i32*)*, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@verify_walker = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32 (i32, i8*, i32*)*, i8*, i32, i8*, i32*)* @verify_rep_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_rep_cache(i32* %0, i32 %1, i32 %2, i32 (i32, i8*, i32*)* %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (i32, i8*, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 (i32, i8*, i32*)* %3, i32 (i32, i8*, i32*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = call i32 @svn_fs_x__exists_rep_cache(i64* %17, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i64, i64* %17, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %8
  %26 = load i32*, i32** %16, align 8
  %27 = call %struct.TYPE_4__* @apr_pcalloc(i32* %26, i32 24)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %18, align 8
  %28 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %12, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 (i32, i8*, i32*)* %31, i32 (i32, i8*, i32*)** %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %12, align 8
  %38 = icmp ne i32 (i32, i8*, i32*)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %12, align 8
  %41 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 %40(i32 %41, i8* %42, i32* %43)
  br label %45

45:                                               ; preds = %39, %25
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @verify_walker, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @svn_fs_x__walk_rep_reference(i32* %46, i32 %47, i32 %48, i32 %49, %struct.TYPE_4__* %50, i32 %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %45, %8
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__exists_rep_cache(i64*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_fs_x__walk_rep_reference(i32*, i32, i32, i32, %struct.TYPE_4__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
