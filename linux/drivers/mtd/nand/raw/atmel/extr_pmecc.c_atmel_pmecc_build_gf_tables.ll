; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_build_gf_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_build_gf_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_gf_tables = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.atmel_pmecc_gf_tables*)* @atmel_pmecc_build_gf_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pmecc_build_gf_tables(i32 %0, i32 %1, %struct.atmel_pmecc_gf_tables* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_pmecc_gf_tables*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.atmel_pmecc_gf_tables* %2, %struct.atmel_pmecc_gf_tables** %7, align 8
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @deg(i32 %12)
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %65, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %33 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %79

53:                                               ; preds = %47, %30
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = xor i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %26

68:                                               ; preds = %26
  %69 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %70 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 1, i32* %74, align 4
  %75 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %76 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 0, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %68, %50, %22
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @deg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
