; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_polarization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_polarization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"Polarization=[Vertical]\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Polarization=[Horizontal]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_set_polarization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_polarization(%struct.dst_state* %0) #0 {
  %2 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %2, align 8
  %3 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %4 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %23 [
    i32 130, label %6
    i32 129, label %14
    i32 128, label %22
  ]

6:                                                ; preds = %1
  %7 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %9 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 8
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -65
  store i32 %13, i32* %11, align 4
  br label %23

14:                                               ; preds = %1
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 64
  store i32 %21, i32* %19, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22, %14, %6
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
