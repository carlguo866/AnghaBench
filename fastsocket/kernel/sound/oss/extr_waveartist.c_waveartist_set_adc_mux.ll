; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_adc_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_adc_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WACMD_GET_LEVEL = common dso_local global i32 0, align 4
@WACMD_SET_MIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i8)* @waveartist_set_adc_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveartist_set_adc_mux(i32* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @WACMD_GET_LEVEL, align 4
  %11 = or i32 %10, 2048
  %12 = call i32 @waveartist_cmd1_r(i32* %9, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @WACMD_GET_LEVEL, align 4
  %15 = or i32 %14, 2304
  %16 = call i32 @waveartist_cmd1_r(i32* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, -64
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = shl i32 %20, 3
  %22 = or i32 %18, %21
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = or i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @WACMD_SET_MIXER, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @waveartist_cmd3(i32* %26, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @waveartist_cmd1_r(i32*, i32) #1

declare dso_local i32 @waveartist_cmd3(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
