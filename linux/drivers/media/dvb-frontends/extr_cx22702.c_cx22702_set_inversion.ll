; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_set_inversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_set_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx22702_state = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx22702_state*, i32)* @cx22702_set_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx22702_set_inversion(%struct.cx22702_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx22702_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx22702_state* %0, %struct.cx22702_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cx22702_state*, %struct.cx22702_state** %4, align 8
  %8 = call i32 @cx22702_readreg(%struct.cx22702_state* %7, i32 12)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 128, label %13
    i32 129, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 254
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %16, %13
  %23 = load %struct.cx22702_state*, %struct.cx22702_state** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cx22702_writereg(%struct.cx22702_state* %23, i32 12, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @cx22702_readreg(%struct.cx22702_state*, i32) #1

declare dso_local i32 @cx22702_writereg(%struct.cx22702_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
