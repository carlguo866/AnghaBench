; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_mprovider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_mprovider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"provider mpu401\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snd_midi*, i8*)* @mpu401_mprovider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpu401_mprovider(%struct.snd_midi* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_midi*, align 8
  %4 = alloca i8*, align 8
  store %struct.snd_midi* %0, %struct.snd_midi** %3, align 8
  store i8* %1, i8** %4, align 8
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
