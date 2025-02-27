; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_id_table_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_id_table_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EF4_FARCH_FILTER_INDEX_WIDTH = common dso_local global i32 0, align 4
@ef4_farch_filter_range_table = common dso_local global i32* null, align 8
@EF4_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ef4_farch_filter_id_table_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_farch_filter_id_table_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @EF4_FARCH_FILTER_INDEX_WIDTH, align 4
  %7 = lshr i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @ef4_farch_filter_range_table, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32*, i32** @ef4_farch_filter_range_table, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EF4_FARCH_FILTER_TABLE_COUNT, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
