; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_get_image_vo.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_get_image_vo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.vo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mp_image* (%struct.vo*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (i8*, i32, i32, i32, i32)* @get_image_vo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @get_image_vo(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vo*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.vo*
  store %struct.vo* %13, %struct.vo** %11, align 8
  %14 = load %struct.vo*, %struct.vo** %11, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mp_image* (%struct.vo*, i32, i32, i32, i32)*, %struct.mp_image* (%struct.vo*, i32, i32, i32, i32)** %17, align 8
  %19 = load %struct.vo*, %struct.vo** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.mp_image* %18(%struct.vo* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  ret %struct.mp_image* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
