; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_check_max_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_check_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_spdif_in = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_spdif_in*, i32, i64*)* @img_spdif_in_check_max_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_in_check_max_rate(%struct.img_spdif_in* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_spdif_in*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.img_spdif_in* %0, %struct.img_spdif_in** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = mul i32 %10, 2
  %12 = mul i32 %11, 32
  %13 = mul i32 %12, 24
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.img_spdif_in*, %struct.img_spdif_in** %5, align 8
  %16 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
