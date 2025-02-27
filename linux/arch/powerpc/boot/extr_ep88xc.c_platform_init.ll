; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ep88xc.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ep88xc.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@table = common dso_local global i8* null, align 8
@PLANETCORE_KEY_MB_RAM = common dso_local global i32 0, align 4
@mem_size = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8
@_dtb_start = common dso_local global i32 0, align 4
@platform_fixups = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @table, align 8
  %13 = load i8*, i8** @table, align 8
  %14 = call i32 @planetcore_prepare_table(i8* %13)
  %15 = load i8*, i8** @table, align 8
  %16 = load i32, i32* @PLANETCORE_KEY_MB_RAM, align 4
  %17 = call i32 @planetcore_get_decimal(i8* %15, i32 %16, i32* @mem_size)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %36

20:                                               ; preds = %5
  %21 = load i32, i32* @mem_size, align 4
  %22 = mul nsw i32 %21, 1048576
  store i32 %22, i32* @mem_size, align 4
  %23 = load i64, i64* @_end, align 8
  %24 = load i32, i32* @mem_size, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @_end, align 8
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @simple_alloc_init(i64 %23, i32 %28, i32 32, i32 64)
  %30 = load i32, i32* @_dtb_start, align 4
  %31 = call i32 @fdt_init(i32 %30)
  %32 = load i8*, i8** @table, align 8
  %33 = call i32 @planetcore_set_stdout_path(i8* %32)
  %34 = call i32 (...) @serial_console_init()
  %35 = load i32, i32* @platform_fixups, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @planetcore_prepare_table(i8*) #1

declare dso_local i32 @planetcore_get_decimal(i8*, i32, i32*) #1

declare dso_local i32 @simple_alloc_init(i64, i32, i32, i32) #1

declare dso_local i32 @fdt_init(i32) #1

declare dso_local i32 @planetcore_set_stdout_path(i8*) #1

declare dso_local i32 @serial_console_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
