; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i8*, i32, i8*, i32, i32*, i32*)* }
%struct.file_baton = type { i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.dir_baton*
  store %struct.dir_baton* %18, %struct.dir_baton** %14, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 1
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %15, align 8
  store %struct.file_baton* null, %struct.file_baton** %16, align 8
  %22 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @make_file_baton(%struct.file_baton** %16, %struct.dir_baton* %22, i8* %23, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %29 = bitcast %struct.file_baton* %28 to i8*
  %30 = load i8**, i8*** %13, align 8
  store i8* %29, i8** %30, align 8
  %31 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %32 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %7, align 8
  br label %53

37:                                               ; preds = %6
  %38 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32* (i8*, i32, i8*, i32, i32*, i32*)*, i32* (i8*, i32, i8*, i32, i32*, i32*)** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %45 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %51 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %50, i32 0, i32 0
  %52 = call i32* %42(i8* %43, i32 %46, i8* %47, i32 %48, i32* %49, i32* %51)
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %37, %35
  %54 = load i32*, i32** %7, align 8
  ret i32* %54
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_file_baton(%struct.file_baton**, %struct.dir_baton*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
