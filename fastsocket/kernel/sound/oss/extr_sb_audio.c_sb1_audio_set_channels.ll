; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sb1_audio_set_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sb1_audio_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i16 }

@audio_devs = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i16)* @sb1_audio_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @sb1_audio_set_channels(i32 %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 %8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i16 1, i16* %14, align 2
  ret i16 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
