; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_enable_pciirqenb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_enable_pciirqenb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PLX_LEGACY = common dso_local global i32 0, align 4
@ep_bit = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*)* @enable_pciirqenb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_pciirqenb(%struct.net2280_ep* %0) #0 {
  %2 = alloca %struct.net2280_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.net2280_ep* %0, %struct.net2280_ep** %2, align 8
  %4 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %5 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %12 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PLX_LEGACY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %21 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @BIT(i64 %22)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i64*, i64** @ep_bit, align 8
  %28 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %29 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BIT(i64 %32)
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %19
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %39 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @writel(i32 %37, i32* %43)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
