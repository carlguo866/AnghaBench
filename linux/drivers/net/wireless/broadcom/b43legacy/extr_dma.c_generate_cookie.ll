; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_generate_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_generate_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*, i32)* @generate_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_cookie(%struct.b43legacy_dmaring* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_dmaring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4096, i32* %5, align 4
  %6 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %7 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %11
    i32 3, label %12
    i32 4, label %13
    i32 5, label %14
  ]

9:                                                ; preds = %2
  store i32 40960, i32* %5, align 4
  br label %15

10:                                               ; preds = %2
  store i32 45056, i32* %5, align 4
  br label %15

11:                                               ; preds = %2
  store i32 49152, i32* %5, align 4
  br label %15

12:                                               ; preds = %2
  store i32 53248, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  store i32 57344, i32* %5, align 4
  br label %15

14:                                               ; preds = %2
  store i32 61440, i32* %5, align 4
  br label %15

15:                                               ; preds = %2, %14, %13, %12, %11, %10, %9
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 61440
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @B43legacy_WARN_ON(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
