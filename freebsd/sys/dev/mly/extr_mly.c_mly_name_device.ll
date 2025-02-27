; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_name_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_name_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64* }
%struct.cam_periph = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*, i32, i32)* @mly_name_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_name_device(%struct.mly_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mly_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_periph*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.cam_periph* @mly_find_periph(%struct.mly_softc* %9, i32 %10, i32 %11)
  store %struct.cam_periph* %12, %struct.cam_periph** %8, align 8
  %13 = icmp ne %struct.cam_periph* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %28 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %31 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sprintf(i64* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %32)
  store i32 0, i32* %4, align 4
  br label %49

34:                                               ; preds = %3
  %35 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %36 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %34, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.cam_periph* @mly_find_periph(%struct.mly_softc*, i32, i32) #1

declare dso_local i32 @sprintf(i64*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
