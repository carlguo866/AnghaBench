; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_dma.c_arch_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_dma.c_arch_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@init_mm = common dso_local global i32 0, align 4
@clear_nocache_walk_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_dma_free(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @walk_page_range(i32* @init_mm, i64 %14, i64 %17, i32* @clear_nocache_walk_ops, i32* null)
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @free_pages_exact(i8* %20, i64 %21)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @walk_page_range(i32*, i64, i64, i32*, i32*) #1

declare dso_local i32 @free_pages_exact(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
