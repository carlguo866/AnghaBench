; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_kvirt_to_pa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_kvirt_to_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @kvirt_to_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvirt_to_pa(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = call i32 @vmalloc_to_page(i8* %6)
  %8 = call i64 @page_address(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = and i64 %9, %12
  %14 = load i64, i64* %3, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @__pa(i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  ret i64 %18
}

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i64 @__pa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
