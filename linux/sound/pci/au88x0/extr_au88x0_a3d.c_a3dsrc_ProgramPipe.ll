; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_ProgramPipe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_ProgramPipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A3dHrirImpulse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @a3dsrc_ProgramPipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3dsrc_ProgramPipe(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @a3dsrc_SetTimeConsts(i32* %3, i32 0, i32 0, i32 0, i32 0)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @a3dsrc_SetAtmosCurrent(i32* %5, i32 0, i32 16384, i32 0, i32 0, i32 0)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @a3dsrc_SetAtmosTarget(i32* %7, i32 16384, i32 0, i32 0, i32 0, i32 0)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @a3dsrc_SetItdCurrent(i32* %9, i32 0, i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @a3dsrc_SetItdTarget(i32* %11, i32 0, i32 0)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @a3dsrc_SetGainCurrent(i32* %13, i32 32767, i32 32767)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @a3dsrc_SetGainTarget(i32* %15, i32 32767, i32 32767)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @A3dHrirImpulse, align 4
  %19 = load i32, i32* @A3dHrirImpulse, align 4
  %20 = call i32 @a3dsrc_SetHrtfCurrent(i32* %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @A3dHrirImpulse, align 4
  %23 = load i32, i32* @A3dHrirImpulse, align 4
  %24 = call i32 @a3dsrc_SetHrtfTarget(i32* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @a3dsrc_SetTimeConsts(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @a3dsrc_SetAtmosCurrent(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @a3dsrc_SetAtmosTarget(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @a3dsrc_SetItdCurrent(i32*, i32, i32) #1

declare dso_local i32 @a3dsrc_SetItdTarget(i32*, i32, i32) #1

declare dso_local i32 @a3dsrc_SetGainCurrent(i32*, i32, i32) #1

declare dso_local i32 @a3dsrc_SetGainTarget(i32*, i32, i32) #1

declare dso_local i32 @a3dsrc_SetHrtfCurrent(i32*, i32, i32) #1

declare dso_local i32 @a3dsrc_SetHrtfTarget(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
