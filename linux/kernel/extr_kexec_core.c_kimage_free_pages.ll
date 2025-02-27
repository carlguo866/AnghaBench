; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @kimage_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kimage_free_pages(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i32 @page_private(%struct.page* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call i32 @page_address(%struct.page* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @arch_kexec_pre_free_pages(i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page, %struct.page* %19, i64 %21
  %23 = call i32 @ClearPageReserved(%struct.page* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @__free_pages(%struct.page* %28, i32 %29)
  ret void
}

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @arch_kexec_pre_free_pages(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @ClearPageReserved(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
