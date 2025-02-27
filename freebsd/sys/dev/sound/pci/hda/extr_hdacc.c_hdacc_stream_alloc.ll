; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdacc.c_hdacc_stream_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdacc.c_hdacc_stream_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdacc_softc = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32**)* @hdacc_stream_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdacc_stream_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.hdacc_softc*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32** %5, i32*** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.hdacc_softc* @device_get_softc(i32 %15)
  store %struct.hdacc_softc* %16, %struct.hdacc_softc** %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32**, i32*** %12, align 8
  %24 = call i32 @HDAC_STREAM_ALLOC(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32** %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hdacc_softc*, %struct.hdacc_softc** %13, align 8
  %30 = getelementptr inbounds %struct.hdacc_softc, %struct.hdacc_softc* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %28, i32* %38, align 4
  br label %39

39:                                               ; preds = %27, %6
  %40 = load i32, i32* %14, align 4
  ret i32 %40
}

declare dso_local %struct.hdacc_softc* @device_get_softc(i32) #1

declare dso_local i32 @HDAC_STREAM_ALLOC(i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
