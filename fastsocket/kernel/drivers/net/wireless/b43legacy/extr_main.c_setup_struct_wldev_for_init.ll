; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_setup_struct_wldev_for_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_setup_struct_wldev_for_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, i32, i32, i32, i32*, i64, i32, i32 }

@B43legacy_IRQ_MASKTEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @setup_struct_wldev_for_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_struct_wldev_for_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %3 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 7
  %7 = call i32 @memset(i32* %6, i32 0, i32 4)
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 6
  %11 = call i32 @setup_struct_phy_for_init(%struct.b43legacy_wldev* %8, i32* %10)
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @memset(i32* %16, i32 0, i32 8)
  %18 = load i32, i32* @B43legacy_IRQ_MASKTEMPLATE, align 4
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %23, i32 0, i32 2
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @setup_struct_phy_for_init(%struct.b43legacy_wldev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
