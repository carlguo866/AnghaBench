; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache.c_svn_cache__get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache.c_svn_cache__get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 (i8**, i64*, i32, i8*, i32*)* }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cache__get(i8** %0, i64* %1, %struct.TYPE_6__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = load i64*, i64** %7, align 8
  store i64 %12, i64* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (i8**, i64*, i32, i8*, i32*)*, i32 (i8**, i64*, i32, i8*, i32*)** %22, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 %23(i8** %24, i64* %25, i32 %28, i8* %29, i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @handle_error(%struct.TYPE_6__* %18, i32 %31, i32* %32)
  store i32* %33, i32** %11, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %5
  %43 = load i32*, i32** %11, align 8
  ret i32* %43
}

declare dso_local i32* @handle_error(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
