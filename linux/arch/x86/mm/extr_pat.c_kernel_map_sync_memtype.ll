; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_kernel_map_sync_memtype.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_kernel_map_sync_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@high_memory = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"x86/PAT: %s:%d ioremap_change_attr failed %s for [mem %#010Lx-%#010Lx]\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_map_sync_memtype(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @high_memory, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i64 @__pa(i64 %11)
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = call i32 @page_is_ram(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %63

22:                                               ; preds = %15
  %23 = load i64, i64* @high_memory, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i64 @__pa(i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %26, %27
  %29 = icmp ule i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i64, i64* @high_memory, align 8
  %32 = call i64 @__pa(i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %32, %33
  br label %37

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i64 [ %34, %30 ], [ %36, %35 ]
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @__va(i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ioremap_change_attr(i64 %40, i64 %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @cattr_name(i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %55, %56
  %58 = sub i64 %57, 1
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %53, i64 %54, i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %45, %21, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @page_is_ram(i64) #1

declare dso_local i64 @ioremap_change_attr(i64, i64, i32) #1

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @cattr_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
