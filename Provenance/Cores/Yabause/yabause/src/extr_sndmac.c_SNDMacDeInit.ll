; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_SNDMacDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_SNDMacDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@outputAU = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@kAudioUnitProperty_SetRenderCallback = common dso_local global i32 0, align 4
@kAudioUnitScope_Input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SNDMacDeInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SNDMacDeInit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = load i32, i32* @outputAU, align 4
  %4 = call i64 @AudioOutputUnitStop(i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @noErr, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %30

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @outputAU, align 4
  %13 = load i32, i32* @kAudioUnitProperty_SetRenderCallback, align 4
  %14 = load i32, i32* @kAudioUnitScope_Input, align 4
  %15 = call i64 @AudioUnitSetProperty(i32 %12, i32 %13, i32 %14, i32 0, %struct.TYPE_3__* %2, i32 16)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @noErr, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %30

20:                                               ; preds = %9
  %21 = load i32, i32* @outputAU, align 4
  %22 = call i64 @AudioUnitUninitialize(i32 %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @noErr, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @outputAU, align 4
  %29 = call i32 @CloseComponent(i32 %28)
  br label %30

30:                                               ; preds = %27, %26, %19, %8
  ret void
}

declare dso_local i64 @AudioOutputUnitStop(i32) #1

declare dso_local i64 @AudioUnitSetProperty(i32, i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @AudioUnitUninitialize(i32) #1

declare dso_local i32 @CloseComponent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
