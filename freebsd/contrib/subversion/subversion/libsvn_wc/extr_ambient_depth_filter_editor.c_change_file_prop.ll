; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32, i8*, i32*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.file_baton*
  store %struct.file_baton* %13, %struct.file_baton** %10, align 8
  %14 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %15 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %14, i32 0, i32 2
  %16 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  store %struct.edit_baton* %16, %struct.edit_baton** %11, align 8
  %17 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %18 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %5, align 8
  br label %36

23:                                               ; preds = %4
  %24 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %25 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32* (i32, i8*, i32*, i32*)*, i32* (i32, i8*, i32*, i32*)** %27, align 8
  %29 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %30 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* %28(i32 %31, i8* %32, i32* %33, i32* %34)
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %23, %21
  %37 = load i32*, i32** %5, align 8
  ret i32* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
