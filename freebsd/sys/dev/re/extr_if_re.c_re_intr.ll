; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_ISR = common dso_local global i32 0, align 4
@RL_INTRS_CPLUS = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@RL_IMR = common dso_local global i32 0, align 4
@taskqueue_fast = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @re_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rl_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rl_softc*
  store %struct.rl_softc* %7, %struct.rl_softc** %4, align 8
  %8 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %9 = load i32, i32* @RL_ISR, align 4
  %10 = call i32 @CSR_READ_2(%struct.rl_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RL_INTRS_CPLUS, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %13
  %21 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %22 = load i32, i32* @RL_IMR, align 4
  %23 = call i32 @CSR_WRITE_2(%struct.rl_softc* %21, i32 %22, i32 0)
  %24 = load i32, i32* @taskqueue_fast, align 4
  %25 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %26 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %25, i32 0, i32 0
  %27 = call i32 @taskqueue_enqueue(i32 %24, i32* %26)
  %28 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
