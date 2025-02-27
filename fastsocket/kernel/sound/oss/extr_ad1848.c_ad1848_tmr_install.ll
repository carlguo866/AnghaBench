; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_tmr_install.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_tmr_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@timer_installed = common dso_local global i32 0, align 4
@ad1848_tmr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@audio_devs = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ad1848_tmr_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1848_tmr_install(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @timer_installed, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ad1848_tmr, i32 0, i32 0), align 4
  store i32 %8, i32* @timer_installed, align 4
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @audio_devs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %9, i64 %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sound_timer_init(%struct.TYPE_4__* @ad1848_tmr, i32 %15)
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %7, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @sound_timer_init(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
