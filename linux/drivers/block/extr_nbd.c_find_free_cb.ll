; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_find_free_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_find_free_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @find_free_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nbd_device*, align 8
  %9 = alloca %struct.nbd_device**, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nbd_device*
  store %struct.nbd_device* %11, %struct.nbd_device** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.nbd_device**
  store %struct.nbd_device** %13, %struct.nbd_device*** %9, align 8
  %14 = load %struct.nbd_device*, %struct.nbd_device** %8, align 8
  %15 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %14, i32 0, i32 0
  %16 = call i32 @refcount_read(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.nbd_device*, %struct.nbd_device** %8, align 8
  %20 = load %struct.nbd_device**, %struct.nbd_device*** %9, align 8
  store %struct.nbd_device* %19, %struct.nbd_device** %20, align 8
  store i32 1, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
