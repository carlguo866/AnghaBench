; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_fft_to_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_fft_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*)* @fft_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fft_to_mode(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %4 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %5 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %11 [
    i32 131, label %9
    i32 130, label %10
    i32 128, label %12
    i32 129, label %12
  ]

9:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %13

10:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %13

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %1, %11
  store i32 3, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %10, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
