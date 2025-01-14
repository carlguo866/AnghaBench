; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_COLOURS_NTSC_GetPreset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_COLOURS_NTSC_GetPreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@default_setup = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@COLOURS_PRESET_STANDARD = common dso_local global i32 0, align 4
@COLOURS_PRESET_CUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @COLOURS_NTSC_GetPreset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @default_setup, i32 0, i32 0), align 4
  %4 = call i64 @Util_almostequal(i32 %2, i32 %3, double 1.000000e-03)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @COLOURS_PRESET_STANDARD, align 4
  store i32 %7, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @COLOURS_PRESET_CUSTOM, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i64 @Util_almostequal(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
