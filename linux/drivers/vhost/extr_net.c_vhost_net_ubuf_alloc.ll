; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_ubuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_ubuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net_ubuf_ref = type { %struct.vhost_virtqueue*, i32, i32 }
%struct.vhost_virtqueue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vhost_net_ubuf_ref* (%struct.vhost_virtqueue*, i32)* @vhost_net_ubuf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vhost_net_ubuf_ref* @vhost_net_ubuf_alloc(%struct.vhost_virtqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.vhost_net_ubuf_ref*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_net_ubuf_ref*, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.vhost_net_ubuf_ref* null, %struct.vhost_net_ubuf_ref** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vhost_net_ubuf_ref* @kmalloc(i32 16, i32 %11)
  store %struct.vhost_net_ubuf_ref* %12, %struct.vhost_net_ubuf_ref** %6, align 8
  %13 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %6, align 8
  %14 = icmp ne %struct.vhost_net_ubuf_ref* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.vhost_net_ubuf_ref* @ERR_PTR(i32 %17)
  store %struct.vhost_net_ubuf_ref* %18, %struct.vhost_net_ubuf_ref** %3, align 8
  br label %30

19:                                               ; preds = %10
  %20 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %6, align 8
  %21 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %20, i32 0, i32 2
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %6, align 8
  %24 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %23, i32 0, i32 1
  %25 = call i32 @init_waitqueue_head(i32* %24)
  %26 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %27 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %6, align 8
  %28 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %27, i32 0, i32 0
  store %struct.vhost_virtqueue* %26, %struct.vhost_virtqueue** %28, align 8
  %29 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %6, align 8
  store %struct.vhost_net_ubuf_ref* %29, %struct.vhost_net_ubuf_ref** %3, align 8
  br label %30

30:                                               ; preds = %19, %15, %9
  %31 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %3, align 8
  ret %struct.vhost_net_ubuf_ref* %31
}

declare dso_local %struct.vhost_net_ubuf_ref* @kmalloc(i32, i32) #1

declare dso_local %struct.vhost_net_ubuf_ref* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
