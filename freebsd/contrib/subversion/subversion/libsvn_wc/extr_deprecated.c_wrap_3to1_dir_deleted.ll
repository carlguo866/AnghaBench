; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to1_dir_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to1_dir_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks_wrapper_baton = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32*, i32*, i8*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8*)* @wrap_3to1_dir_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_3to1_dir_deleted(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.diff_callbacks_wrapper_baton*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.diff_callbacks_wrapper_baton*
  store %struct.diff_callbacks_wrapper_baton* %13, %struct.diff_callbacks_wrapper_baton** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %11, align 8
  %21 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32* (i32*, i32*, i8*, i32)*, i32* (i32*, i32*, i8*, i32)** %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %11, align 8
  %29 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32* %24(i32* %25, i32* %26, i8* %27, i32 %30)
  ret i32* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
