; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c___set_rdc_table_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c___set_rdc_table_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@HOST_INFO_MACRDCTBLN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i32, i32, i32)* @__set_rdc_table_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_rdc_table_num(%struct.niu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @HOST_INFO_MACRDCTBLN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %40

21:                                               ; preds = %5
  %22 = load %struct.niu*, %struct.niu** %7, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @XMAC_HOST_INFO(i32 %29)
  store i64 %30, i64* %12, align 8
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @BMAC_HOST_INFO(i32 %32)
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.niu*, %struct.niu** %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @__set_rdc_table_num_hw(%struct.niu* %35, i64 %36, i32 %37, i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %18
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i64 @XMAC_HOST_INFO(i32) #1

declare dso_local i64 @BMAC_HOST_INFO(i32) #1

declare dso_local i32 @__set_rdc_table_num_hw(%struct.niu*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
