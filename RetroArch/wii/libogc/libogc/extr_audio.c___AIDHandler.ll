; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c___AIDHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c___AIDHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dspReg = common dso_local global i32* null, align 8
@DSPCR_DSPINT = common dso_local global i32 0, align 4
@DSPCR_ARINT = common dso_local global i32 0, align 4
@DSPCR_AIINT = common dso_local global i32 0, align 4
@__AIActive = common dso_local global i32 0, align 4
@__CallbackStack = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @__AIDHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__AIDHandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** @_dspReg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DSPCR_DSPINT, align 4
  %9 = load i32, i32* @DSPCR_ARINT, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = load i32, i32* @DSPCR_AIINT, align 4
  %14 = or i32 %12, %13
  %15 = load i32*, i32** @_dspReg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 %14, i32* %16, align 4
  br i1 true, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @__AIActive, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  store i32 1, i32* @__AIActive, align 4
  %21 = load i64, i64* @__CallbackStack, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @__AICallbackStackSwitch(i32 (...)* @__AID_Callback)
  br label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @__AID_Callback()
  br label %27

27:                                               ; preds = %25, %23
  store i32 0, i32* @__AIActive, align 4
  br label %28

28:                                               ; preds = %27, %17
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @__AID_Callback(...) #1

declare dso_local i32 @__AICallbackStackSwitch(i32 (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
