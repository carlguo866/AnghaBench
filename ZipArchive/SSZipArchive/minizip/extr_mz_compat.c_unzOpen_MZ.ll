; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzOpen_MZ.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzOpen_MZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @unzOpen_MZ(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %4, align 8
  %7 = load i64, i64* @MZ_OK, align 8
  store i64 %7, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %8 = call i32 @mz_zip_create(i8** %6)
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %12 = call i64 @mz_zip_open(i8* %9, i8* %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MZ_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @mz_zip_delete(i8** %6)
  store i32* null, i32** %2, align 8
  br label %39

18:                                               ; preds = %1
  %19 = call i64 @MZ_ALLOC(i32 16)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %4, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @mz_zip_goto_first_entry(i8* %32)
  br label %36

34:                                               ; preds = %18
  %35 = call i32 @mz_zip_delete(i8** %6)
  br label %36

36:                                               ; preds = %34, %23
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = bitcast %struct.TYPE_2__* %37 to i32*
  store i32* %38, i32** %2, align 8
  br label %39

39:                                               ; preds = %36, %16
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i32 @mz_zip_create(i8**) #1

declare dso_local i64 @mz_zip_open(i8*, i8*, i32) #1

declare dso_local i32 @mz_zip_delete(i8**) #1

declare dso_local i64 @MZ_ALLOC(i32) #1

declare dso_local i32 @mz_zip_goto_first_entry(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
