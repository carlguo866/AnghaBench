; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_sound_callback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_sound_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@sdl_sound = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @sdl_sound_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_sound_callback(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @memset(i32* %11, i32 0, i32 %12)
  br label %41

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 1), align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @memcpy(i32* %15, i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %23, %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 2, %25
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %19, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 1), align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 2), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  %36 = call i32 @memcpy(i32* %29, i32* %34, i32 %35)
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 0), align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sound, i32 0, i32 2), align 8
  br label %41

41:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
