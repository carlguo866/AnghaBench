; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }

@H_D0I3C_I3 = common dso_local global i32 0, align 4
@H_D0I3C_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i32)* @mei_me_d0i3_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_d0i3_set(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @H_D0I3C_I3, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @H_D0I3C_IR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @H_D0I3C_IR, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mei_me_d0i3c_write(%struct.mei_device* %23, i32 %24)
  %26 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %27 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @mei_me_d0i3c_read(%struct.mei_device*) #1

declare dso_local i32 @mei_me_d0i3c_write(%struct.mei_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
