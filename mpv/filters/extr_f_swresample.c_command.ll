; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_command.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.mp_filter_command = type { i64, i32 }

@MP_FILTER_COMMAND_SET_SPEED_RESAMPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_filter_command*)* @command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command(%struct.mp_filter* %0, %struct.mp_filter_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_filter_command*, align 8
  %6 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_filter_command* %1, %struct.mp_filter_command** %5, align 8
  %7 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %8 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %6, align 8
  %10 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %11 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_FILTER_COMMAND_SET_SPEED_RESAMPLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %17 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.priv*, %struct.priv** %6, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
