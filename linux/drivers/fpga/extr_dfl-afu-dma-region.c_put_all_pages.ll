; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_put_all_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_put_all_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i32)* @put_all_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_all_pages(%struct.page** %0, i32 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.page**, %struct.page*** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.page*, %struct.page** %11, i64 %13
  %15 = load %struct.page*, %struct.page** %14, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.page**, %struct.page*** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 %20
  %22 = load %struct.page*, %struct.page** %21, align 8
  %23 = call i32 @put_page(%struct.page* %22)
  br label %24

24:                                               ; preds = %17, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  ret void
}

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
