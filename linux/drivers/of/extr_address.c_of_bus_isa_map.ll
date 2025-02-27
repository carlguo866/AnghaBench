; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_bus_isa_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_bus_isa_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OF_BAD_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ISA map, cp=%llx, s=%llx, da=%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32)* @of_bus_isa_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @of_bus_isa_map(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = call i32 @cpu_to_be32(i32 1)
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64, i64* @OF_BAD_ADDR, align 8
  store i64 %26, i64* %6, align 8
  br label %66

27:                                               ; preds = %5
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64 @of_read_number(i32* %29, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @of_read_number(i32* %39, i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i64 @of_read_number(i32* %43, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48, i64 %49)
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %27
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %27
  %61 = load i64, i64* @OF_BAD_ADDR, align 8
  store i64 %61, i64* %6, align 8
  br label %66

62:                                               ; preds = %54
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %62, %60, %25
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
