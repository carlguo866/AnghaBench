; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_FLUSHP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_FLUSHP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_DMAFLUSHP = common dso_local global i32 0, align 4
@CMD_DMAFLUSHP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\09DMAFLUSHP %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @_emit_FLUSHP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_FLUSHP(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @SZ_DMAFLUSHP, align 4
  store i32 %11, i32* %4, align 4
  br label %28

12:                                               ; preds = %3
  %13 = load i32, i32* @CMD_DMAFLUSHP, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 31
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 3
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @SZ_DMAFLUSHP, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 3
  %26 = call i32 @PL330_DBGCMD_DUMP(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @SZ_DMAFLUSHP, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %12, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @PL330_DBGCMD_DUMP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
