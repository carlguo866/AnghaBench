; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_imageupdater.h_decoder_NewTTML_ImageSpu.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_imageupdater.h_decoder_NewTTML_ImageSpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32** }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32, i32 }

@TTML_ImageSpuDestroy = common dso_local global i32 0, align 4
@TTML_ImageSpuUpdate = common dso_local global i32 0, align 4
@TTML_ImageSpuValidate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @decoder_NewTTML_ImageSpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decoder_NewTTML_ImageSpu(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call %struct.TYPE_6__* @calloc(i32 1, i32 16)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %35

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %15 = load i32, i32* @TTML_ImageSpuDestroy, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %17 = load i32, i32* @TTML_ImageSpuUpdate, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %19 = load i32, i32* @TTML_ImageSpuValidate, align 4
  store i32 %19, i32* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32** %23, i32*** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @decoder_NewSubpicture(i32* %26, %struct.TYPE_7__* %5)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %11
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @free(%struct.TYPE_6__* %31)
  br label %33

33:                                               ; preds = %30, %11
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %33, %10
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32* @decoder_NewSubpicture(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
