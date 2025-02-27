; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"%s: srcbuf[0x%x] overwritten! Expected %02x, got %02x\0A\00", align 1
@PATTERN_COPY = common dso_local global i32 0, align 4
@PATTERN_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: dstbuf[0x%x] not copied! Expected %02x, got %02x\0A\00", align 1
@PATTERN_SRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: dstbuf[0x%x] was copied! Expected %02x, got %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: dstbuf[0x%x] mismatch! Expected %02x, got %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @dmatest_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmatest_mismatch(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = xor i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @gen_inv_idx(i32 %20, i32 %21)
  %23 = or i32 %19, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load i8*, i8** %15, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i32 %32, i32 %33)
  br label %72

35:                                               ; preds = %6
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PATTERN_COPY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @PATTERN_COPY, align 4
  %43 = load i32, i32* @PATTERN_OVERWRITE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i8*, i8** %15, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49, i32 %50, i32 %51)
  br label %71

53:                                               ; preds = %40, %35
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @PATTERN_SRC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i8*, i8** %15, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %60, i32 %61, i32 %62)
  br label %70

64:                                               ; preds = %53
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %29
  ret void
}

declare dso_local i32 @gen_inv_idx(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
