; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_set_vgc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_set_vgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.link_qual = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i64)* @rt73usb_set_vgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_set_vgc(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i64 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %8 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %13, i32 17, i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %18 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %21 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @rt73usb_bbp_write(%struct.rt2x00_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
