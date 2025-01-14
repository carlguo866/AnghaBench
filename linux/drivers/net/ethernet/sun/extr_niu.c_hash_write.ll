; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_hash_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_hash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@FCRAM_NUM_PARTITIONS = common dso_local global i64 0, align 8
@FCRAM_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i64, i64, i64, i32*)* @hash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_write(%struct.niu* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @hash_addr_regval(i64 %14, i64 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @FCRAM_NUM_PARTITIONS, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = mul i64 %22, 8
  %24 = add i64 %21, %23
  %25 = load i64, i64* @FCRAM_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %51

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @HASH_TBL_ADDR(i64 %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @nw64(i32 %32, i32 %33)
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %47, %30
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @HASH_TBL_DATA(i64 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nw64(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %35

50:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @hash_addr_regval(i64, i64) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @HASH_TBL_ADDR(i64) #1

declare dso_local i32 @HASH_TBL_DATA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
