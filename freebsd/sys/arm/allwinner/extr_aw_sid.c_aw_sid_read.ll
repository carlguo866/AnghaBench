; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_sid.c_aw_sid_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_sid.c_aw_sid_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_sid_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32*)* @aw_sid_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_sid_read(i32 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.aw_sid_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.aw_sid_softc* @device_get_softc(i32 %13)
  store %struct.aw_sid_softc* %14, %struct.aw_sid_softc** %10, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %59, %4
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %10, align 8
  %18 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %10, align 8
  %26 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %10, align 8
  %36 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %34, %44
  %46 = icmp eq i64 %24, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %23
  %48 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %10, align 8
  %49 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %23
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %15

62:                                               ; preds = %47, %15
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ENOENT, align 4
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @aw_sid_get_fuse(i32 %68, i32* %69, i64* %8)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %65
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.aw_sid_softc* @device_get_softc(i32) #1

declare dso_local i32 @aw_sid_get_fuse(i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
