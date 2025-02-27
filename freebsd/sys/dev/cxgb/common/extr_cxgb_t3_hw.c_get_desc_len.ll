; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_get_desc_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_get_desc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_desc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_desc_len(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 3
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @t3_seeprom_read(i32* %17, i32 %18, i32* %7)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 4
  %39 = call i32 @t3_seeprom_read(i32* %36, i32 %38, i32* %7)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = and i32 %59, 65280
  %61 = add nsw i32 %53, %60
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %24
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 7
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %44
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %42, %22
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @t3_seeprom_read(i32*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
