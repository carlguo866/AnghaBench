; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips16_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips16_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, i16 }

@mips16_skip_prologue.table = internal global [12 x %struct.anon] [%struct.anon { i16 25344, i16 -256 }, %struct.anon { i16 -1280, i16 -256 }, %struct.anon { i16 -12288, i16 -2048 }, %struct.anon { i16 -1792, i16 -256 }, %struct.anon { i16 25088, i16 -256 }, %struct.anon { i16 -1536, i16 -256 }, %struct.anon { i16 26429, i16 -1 }, %struct.anon { i16 -9856, i16 -128 }, %struct.anon { i16 26372, i16 -228 }, %struct.anon { i16 -6135, i16 -2017 }, %struct.anon { i16 256, i16 -256 }, %struct.anon zeroinitializer], align 16
@MIPS16_INSTLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mips16_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips16_skip_prologue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @skip_prologue_using_sal(i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %14, 100
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %13, %1
  br label %17

17:                                               ; preds = %76, %16
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = call zeroext i16 @mips_fetch_instruction(i64 %22)
  store i16 %23, i16* %7, align 2
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 63488
  %27 = icmp eq i32 %26, 61440
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @MIPS16_INSTLEN, align 4
  store i32 %29, i32* %5, align 4
  br label %76

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %59, %30
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @mips16_skip_prologue.table, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %32
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @mips16_skip_prologue.table, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %42, %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @mips16_skip_prologue.table, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = load i16, i16* %53, align 4
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %62

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %32

62:                                               ; preds = %57, %32
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @mips16_skip_prologue.table, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  store i64 %75, i64* %2, align 8
  br label %83

76:                                               ; preds = %70, %28
  %77 = load i32, i32* @MIPS16_INSTLEN, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %3, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %3, align 8
  br label %17

81:                                               ; preds = %17
  %82 = load i64, i64* %3, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %81, %71
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i64 @skip_prologue_using_sal(i64) #1

declare dso_local zeroext i16 @mips_fetch_instruction(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
