; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_get_if_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_get_if_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5007t_state* }
%struct.mxl5007t_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mxl5007t_get_if_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_get_if_frequency(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mxl5007t_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %7, align 8
  store %struct.mxl5007t_state* %8, %struct.mxl5007t_state** %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %5, align 8
  %11 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %35 [
    i32 133, label %13
    i32 134, label %15
    i32 135, label %17
    i32 131, label %19
    i32 132, label %21
    i32 129, label %23
    i32 130, label %25
    i32 128, label %27
    i32 138, label %29
    i32 137, label %31
    i32 136, label %33
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32 4000000, i32* %14, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  store i32 4500000, i32* %16, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  store i32 4570000, i32* %18, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  store i32 5000000, i32* %20, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  store i32 5380000, i32* %22, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  store i32 6000000, i32* %24, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  store i32 6280000, i32* %26, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  store i32 9191500, i32* %28, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  store i32 35250000, i32* %30, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  store i32 36150000, i32* %32, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  store i32 44000000, i32* %34, align 4
  br label %35

35:                                               ; preds = %2, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
