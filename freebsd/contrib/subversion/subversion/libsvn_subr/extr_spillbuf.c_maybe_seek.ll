; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_maybe_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_maybe_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32* }

@APR_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, i32*)* @maybe_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_seek(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @APR_SET, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @svn_io_file_seek(i32* %23, i32 %24, i32* %7, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @TRUE, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %17
  br label %41

34:                                               ; preds = %12, %3
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %42
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
