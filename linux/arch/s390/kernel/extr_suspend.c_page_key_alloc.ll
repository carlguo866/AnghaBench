; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_page_key_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_page_key_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_key_data = type { i8* }

@PAGE_KEY_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@page_key_data = common dso_local global i8* null, align 8
@page_key_wp = common dso_local global i8* null, align 8
@page_key_rp = common dso_local global i8* null, align 8
@page_key_wx = common dso_local global i64 0, align 8
@page_key_rx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_key_alloc(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.page_key_data*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @PAGE_KEY_DATA_SIZE, align 4
  %8 = call i64 @DIV_ROUND_UP(i64 %6, i32 %7)
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %5, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to %struct.page_key_data*
  store %struct.page_key_data* %16, %struct.page_key_data** %4, align 8
  %17 = load %struct.page_key_data*, %struct.page_key_data** %4, align 8
  %18 = icmp ne %struct.page_key_data* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 (...) @page_key_free()
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %13
  %24 = load i8*, i8** @page_key_data, align 8
  %25 = load %struct.page_key_data*, %struct.page_key_data** %4, align 8
  %26 = getelementptr inbounds %struct.page_key_data, %struct.page_key_data* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.page_key_data*, %struct.page_key_data** %4, align 8
  %28 = bitcast %struct.page_key_data* %27 to i8*
  store i8* %28, i8** @page_key_data, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i8*, i8** @page_key_data, align 8
  store i8* %30, i8** @page_key_wp, align 8
  store i8* %30, i8** @page_key_rp, align 8
  store i64 0, i64* @page_key_wx, align 8
  store i64 0, i64* @page_key_rx, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @page_key_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
