; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_pin_in_config_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_pin_in_config_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pin_config = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.aspeed_pin_config*)* @pin_in_config_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_in_config_range(i32 %0, %struct.aspeed_pin_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_pin_config*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.aspeed_pin_config* %1, %struct.aspeed_pin_config** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %4, align 8
  %7 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp uge i32 %5, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %4, align 8
  %15 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ule i32 %13, %18
  br label %20

20:                                               ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
