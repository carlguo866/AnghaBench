; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_resume_tx_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_resume_tx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.net_dev_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @comp_resume_tx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_resume_tx_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_dev_context*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %8 = call %struct.net_dev_context* @get_net_dev_hold(%struct.most_interface* %7)
  store %struct.net_dev_context* %8, %struct.net_dev_context** %6, align 8
  %9 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %10 = icmp ne %struct.net_dev_context* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %14 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %22 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_wake_queue(i32 %23)
  br label %25

25:                                               ; preds = %20, %19
  %26 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %27 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_put(i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.net_dev_context* @get_net_dev_hold(%struct.most_interface*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
