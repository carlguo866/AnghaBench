; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_beacon1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_beacon1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_wl* }
%struct.b43_wl = type { i32 }

@B43_SHM_SH_BT_BASE1 = common dso_local global i32 0, align 4
@B43_SHM_SH_BTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_upload_beacon1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_upload_beacon1(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  %6 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  store %struct.b43_wl* %6, %struct.b43_wl** %3, align 8
  %7 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @B43_SHM_SH_BT_BASE1, align 4
  %15 = load i32, i32* @B43_SHM_SH_BTL1, align 4
  %16 = call i32 @b43_write_beacon_template(%struct.b43_wldev* %13, i32 %14, i32 %15)
  %17 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @b43_write_beacon_template(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
