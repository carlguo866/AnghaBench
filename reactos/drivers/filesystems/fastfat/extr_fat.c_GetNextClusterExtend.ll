; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fat.c_GetNextClusterExtend.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fat.c_GetNextClusterExtend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_8__*, i64*)*, {}* }

@.str = private unnamed_addr constant [55 x i8] c"GetNextClusterExtend(DeviceExt %p, CurrentCluster %x)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNextClusterExtend(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @DPRINT(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %10, i64 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @ExAcquireResourceExclusiveLite(i32* %14, i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_8__*, i64*)*, i32 (%struct.TYPE_8__*, i64*)** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i32 %22(%struct.TYPE_8__* %23, i64* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call i32 @ExReleaseResourceLite(i32* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %80

33:                                               ; preds = %19
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @ExReleaseResourceLite(i32* %38)
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = bitcast {}** %43 to i32 (%struct.TYPE_8__*, i64, i32*)**
  %45 = load i32 (%struct.TYPE_8__*, i64, i32*)*, i32 (%struct.TYPE_8__*, i64, i32*)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 %45(%struct.TYPE_8__* %46, i64 %47, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %75

53:                                               ; preds = %41
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_8__*, i64*)*, i32 (%struct.TYPE_8__*, i64*)** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = call i32 %56(%struct.TYPE_8__* %57, i64* %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @NT_SUCCESS(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i32 @ExReleaseResourceLite(i32* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %53
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @WriteCluster(%struct.TYPE_8__* %68, i64 %69, i64 %70)
  %72 = load i64, i64* %8, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %41
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @ExReleaseResourceLite(i32* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %62, %33, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @WriteCluster(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
