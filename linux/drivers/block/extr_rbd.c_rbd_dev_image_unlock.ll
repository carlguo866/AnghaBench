; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_image_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_image_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_dev_image_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_dev_image_unlock(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %3 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %3, i32 0, i32 0
  %5 = call i32 @down_write(i32* %4)
  %6 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %7 = call i64 @__rbd_is_lock_owner(%struct.rbd_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %11 = call i32 @__rbd_release_lock(%struct.rbd_device* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 0
  %15 = call i32 @up_write(i32* %14)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @__rbd_is_lock_owner(%struct.rbd_device*) #1

declare dso_local i32 @__rbd_release_lock(%struct.rbd_device*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
