; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_algo_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_algo_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dma_amo_dest = type { i64 }
%union.intr_dest = type { i64 }
%union.algo_step = type { i64 }

@MBCS_ALG_AMO_DEST = common dso_local global i32 0, align 4
@MBCS_ALG_INT_DEST = common dso_local global i32 0, align 4
@MBCS_ALG_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*)* @mbcs_algo_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbcs_algo_set(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %union.dma_amo_dest, align 8
  %14 = alloca %union.intr_dest, align 8
  %15 = alloca %union.algo_step, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = bitcast %union.algo_step* %15 to i64*
  store i64 0, i64* %16, align 8
  %17 = bitcast %union.intr_dest* %14 to i64*
  store i64 0, i64* %17, align 8
  %18 = bitcast %union.dma_amo_dest* %13 to i64*
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast %union.dma_amo_dest* %13 to i8**
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast %union.dma_amo_dest* %13 to i8**
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @MBCS_ALG_AMO_DEST, align 4
  %25 = bitcast %union.dma_amo_dest* %13 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @MBCS_MMR_SET(i8* %23, i32 %24, i64 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast %union.intr_dest* %14 to i8**
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = bitcast %union.intr_dest* %14 to i8**
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @MBCS_ALG_INT_DEST, align 4
  %34 = bitcast %union.intr_dest* %14 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @MBCS_MMR_SET(i8* %32, i32 %33, i64 %35)
  %37 = load i8*, i8** %12, align 8
  %38 = bitcast %union.algo_step* %15 to i8**
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @MBCS_ALG_STEP, align 4
  %41 = bitcast %union.algo_step* %15 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @MBCS_MMR_SET(i8* %39, i32 %40, i64 %42)
  ret void
}

declare dso_local i32 @MBCS_MMR_SET(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
