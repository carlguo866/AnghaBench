; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_chan_resume_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_chan_resume_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.lowpan_btle_dev = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"chan %p resume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @chan_resume_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chan_resume_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.lowpan_btle_dev*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %4)
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.lowpan_btle_dev* @lookup_dev(i32 %8)
  store %struct.lowpan_btle_dev* %9, %struct.lowpan_btle_dev** %3, align 8
  %10 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %11 = icmp ne %struct.lowpan_btle_dev* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %14 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %23

18:                                               ; preds = %12
  %19 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %20 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netif_wake_queue(i32 %21)
  br label %23

23:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local %struct.lowpan_btle_dev* @lookup_dev(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
