; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_get_comment.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_get_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_EXIST_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_get_comment(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %11
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @MZ_EXIST_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @MZ_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %21, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
