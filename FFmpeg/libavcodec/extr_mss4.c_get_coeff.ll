; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_get_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_get_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @get_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_coeff(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_vlc2(i32* %6, i32 %9, i32 %12, i32 2)
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_coeff_bits(i32* %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_coeff_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
