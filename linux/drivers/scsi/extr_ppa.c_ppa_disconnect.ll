; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ppa.c_ppa_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ppa.c_ppa_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ppa_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppa_disconnect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %3, align 2
  %7 = load i16, i16* %3, align 2
  %8 = call i32 @ppa_d_pulse(i16 zeroext %7, i32 0)
  %9 = load i16, i16* %3, align 2
  %10 = call i32 @ppa_d_pulse(i16 zeroext %9, i32 60)
  %11 = load i16, i16* %3, align 2
  %12 = call i32 @ppa_d_pulse(i16 zeroext %11, i32 32)
  %13 = load i16, i16* %3, align 2
  %14 = call i32 @ppa_d_pulse(i16 zeroext %13, i32 15)
  ret void
}

declare dso_local i32 @ppa_d_pulse(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
