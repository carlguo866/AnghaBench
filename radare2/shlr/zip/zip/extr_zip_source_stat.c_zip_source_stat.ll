; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_stat.c_zip_source_stat.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_stat.c_zip_source_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i8*, i32, %struct.zip_source*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, %struct.zip_stat*, i32, i32)*, i64 (%struct.zip_source.0*, i32, %struct.zip_stat*, i32, i32)* }
%struct.zip_source.0 = type opaque
%struct.zip_stat = type { i32 }

@ZIP_LES_INVAL = common dso_local global i8* null, align 8
@ZIP_SOURCE_STAT = common dso_local global i32 0, align 4
@ZIP_LES_LOWER = common dso_local global i8* null, align 8
@ZIP_SOURCE_ERR_LOWER = common dso_local global i64 0, align 8
@ZIP_LES_UPPER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_source_stat(%struct.zip_source* %0, %struct.zip_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_source*, align 8
  %5 = alloca %struct.zip_stat*, align 8
  %6 = alloca i64, align 8
  store %struct.zip_source* %0, %struct.zip_source** %4, align 8
  store %struct.zip_stat* %1, %struct.zip_stat** %5, align 8
  %7 = load %struct.zip_stat*, %struct.zip_stat** %5, align 8
  %8 = icmp eq %struct.zip_stat* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** @ZIP_LES_INVAL, align 8
  %11 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %12 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  store i32 -1, i32* %3, align 4
  br label %74

13:                                               ; preds = %2
  %14 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %15 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %14, i32 0, i32 2
  %16 = load %struct.zip_source*, %struct.zip_source** %15, align 8
  %17 = icmp eq %struct.zip_source* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %20 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (i32, %struct.zip_stat*, i32, i32)*, i64 (i32, %struct.zip_stat*, i32, i32)** %21, align 8
  %23 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %24 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.zip_stat*, %struct.zip_stat** %5, align 8
  %27 = load i32, i32* @ZIP_SOURCE_STAT, align 4
  %28 = call i64 %22(i32 %25, %struct.zip_stat* %26, i32 4, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %74

31:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %74

32:                                               ; preds = %13
  %33 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %34 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %33, i32 0, i32 2
  %35 = load %struct.zip_source*, %struct.zip_source** %34, align 8
  %36 = load %struct.zip_stat*, %struct.zip_stat** %5, align 8
  %37 = call i32 @zip_source_stat(%struct.zip_source* %35, %struct.zip_stat* %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** @ZIP_LES_LOWER, align 8
  %41 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %42 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 -1, i32* %3, align 4
  br label %74

43:                                               ; preds = %32
  %44 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %45 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64 (%struct.zip_source.0*, i32, %struct.zip_stat*, i32, i32)*, i64 (%struct.zip_source.0*, i32, %struct.zip_stat*, i32, i32)** %46, align 8
  %48 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %49 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %48, i32 0, i32 2
  %50 = load %struct.zip_source*, %struct.zip_source** %49, align 8
  %51 = bitcast %struct.zip_source* %50 to %struct.zip_source.0*
  %52 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %53 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.zip_stat*, %struct.zip_stat** %5, align 8
  %56 = load i32, i32* @ZIP_SOURCE_STAT, align 4
  %57 = call i64 %47(%struct.zip_source.0* %51, i32 %54, %struct.zip_stat* %55, i32 4, i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %43
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @ZIP_SOURCE_ERR_LOWER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** @ZIP_LES_LOWER, align 8
  %66 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %67 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %60
  %69 = load i8*, i8** @ZIP_LES_UPPER, align 8
  %70 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %71 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  store i32 -1, i32* %3, align 4
  br label %74

73:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %39, %31, %30, %9
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
