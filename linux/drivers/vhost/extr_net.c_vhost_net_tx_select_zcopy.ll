; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_tx_select_zcopy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_tx_select_zcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*)* @vhost_net_tx_select_zcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_tx_select_zcopy(%struct.vhost_net* %0) #0 {
  %2 = alloca %struct.vhost_net*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %2, align 8
  %3 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %4 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %9 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 64
  %12 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %13 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi i1 [ false, %1 ], [ %15, %7 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
