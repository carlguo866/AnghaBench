; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_OpenRD.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_OpenRD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@clear_renderer_item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenRD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenRD(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = call %struct.TYPE_7__* @calloc(i32 1, i32 16)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = call i32 @OpenCommon(%struct.TYPE_7__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @VLC_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* @clear_renderer_item, align 4
  %33 = call i32 @vlc_dictionary_clear(i32* %31, i32 %32, i32* null)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @free(%struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %29, %18
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @OpenCommon(%struct.TYPE_7__*) #1

declare dso_local i32 @vlc_dictionary_clear(i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
