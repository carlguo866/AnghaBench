; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_dir_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_dir_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* (i32*, i32*, i32*, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i32, i8*, i32*)* @wrap_4to3_dir_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_4to3_dir_closed(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.diff_callbacks3_wrapper_baton*
  store %struct.diff_callbacks3_wrapper_baton* %18, %struct.diff_callbacks3_wrapper_baton** %15, align 8
  %19 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %15, align 8
  %20 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %15, align 8
  %23 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @svn_dirent_join(i32 %24, i8* %25, i32* %26)
  %28 = load i32*, i32** %14, align 8
  %29 = call i32* @svn_wc__adm_retrieve_internal2(i32 %21, i32 %27, i32* %28)
  store i32* %29, i32** %16, align 8
  %30 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %15, align 8
  %31 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32* (i32*, i32*, i32*, i32*, i32, i32)*, i32* (i32*, i32*, i32*, i32*, i32, i32)** %33, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %15, align 8
  %40 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @svn_dirent_join(i32 %41, i8* %42, i32* %43)
  %45 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %15, align 8
  %46 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* %34(i32* %35, i32* %36, i32* %37, i32* %38, i32 %44, i32 %47)
  ret i32* %48
}

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
