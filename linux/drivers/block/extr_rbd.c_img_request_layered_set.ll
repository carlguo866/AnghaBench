; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_img_request_layered_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_img_request_layered_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32 }

@IMG_REQ_LAYERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_img_request*)* @img_request_layered_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_request_layered_set(%struct.rbd_img_request* %0) #0 {
  %2 = alloca %struct.rbd_img_request*, align 8
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %2, align 8
  %3 = load i32, i32* @IMG_REQ_LAYERED, align 4
  %4 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %5 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = call i32 (...) @smp_mb()
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
