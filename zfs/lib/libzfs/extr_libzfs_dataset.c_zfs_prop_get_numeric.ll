; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_get_numeric.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_get_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@EZFS_PROPTYPE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot get property '%s'\00", align 1
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_get_numeric(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  %20 = call i32 @zfs_prop_valid_for_type(i32 %15, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EZFS_PROPTYPE, align 4
  %27 = load i32, i32* @TEXT_DOMAIN, align 4
  %28 = call i32 @dgettext(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @zfs_prop_to_name(i32 %29)
  %31 = call i32 @zfs_error_fmt(i32 %25, i32 %26, i32 %28, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %53

32:                                               ; preds = %6
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i64 @get_numeric_property(%struct.TYPE_5__* %39, i32 %40, i32* %41, i8** %14, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %53

46:                                               ; preds = %38
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @get_source(%struct.TYPE_5__* %47, i32* %48, i8* %49, i8* %50, i64 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %45, %22
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @zfs_prop_valid_for_type(i32, i32, i32) #1

declare dso_local i32 @zfs_error_fmt(i32, i32, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @get_numeric_property(%struct.TYPE_5__*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @get_source(%struct.TYPE_5__*, i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
