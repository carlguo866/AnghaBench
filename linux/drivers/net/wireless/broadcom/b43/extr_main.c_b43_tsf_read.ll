; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_tsf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_tsf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_MMIO_REV3PLUS_TSF_LOW = common dso_local global i32 0, align 4
@B43_MMIO_REV3PLUS_TSF_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_tsf_read(%struct.b43_wldev* %0, i32* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = call i32 @B43_WARN_ON(i32 %13)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* @B43_MMIO_REV3PLUS_TSF_LOW, align 4
  %17 = call i32 @b43_read32(%struct.b43_wldev* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load i32, i32* @B43_MMIO_REV3PLUS_TSF_HIGH, align 4
  %20 = call i32 @b43_read32(%struct.b43_wldev* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 32
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
