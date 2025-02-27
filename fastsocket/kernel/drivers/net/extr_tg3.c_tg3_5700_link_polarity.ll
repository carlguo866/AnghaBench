; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_5700_link_polarity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_5700_link_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, i32 }

@LED_CTRL_MODE_PHY_2 = common dso_local global i64 0, align 8
@TG3_PHY_ID_MASK = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5411 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i64)* @tg3_5700_link_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_5700_link_polarity(%struct.tg3* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.tg3*, %struct.tg3** %4, align 8
  %7 = getelementptr inbounds %struct.tg3, %struct.tg3* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LED_CTRL_MODE_PHY_2, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.tg3*, %struct.tg3** %4, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @TG3_PHY_ID_BCM5411, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SPEED_10, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %34

25:                                               ; preds = %20
  br label %32

26:                                               ; preds = %12
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SPEED_10, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %34

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30, %24, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
