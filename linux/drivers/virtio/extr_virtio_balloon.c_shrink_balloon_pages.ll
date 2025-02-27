; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_shrink_balloon_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_shrink_balloon_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i64 }

@VIRTIO_BALLOON_PAGES_PER_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.virtio_balloon*, i64)* @shrink_balloon_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @shrink_balloon_pages(%struct.virtio_balloon* %0, i64 %1) #0 {
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %16, %2
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i1 [ false, %6 ], [ %13, %11 ]
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @leak_balloon(%struct.virtio_balloon* %17, i64 %18)
  %20 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %21 = udiv i64 %19, %20
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %4, align 8
  br label %6

27:                                               ; preds = %14
  %28 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %29 = call i32 @update_balloon_size(%struct.virtio_balloon* %28)
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i64 @leak_balloon(%struct.virtio_balloon*, i64) #1

declare dso_local i32 @update_balloon_size(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
