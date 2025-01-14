; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_rss }
%struct.ena_rss = type { i64, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*)* @ena_com_indirect_table_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_indirect_table_destroy(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_rss*, align 8
  %4 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %5 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %5, i32 0, i32 1
  store %struct.ena_rss* %6, %struct.ena_rss** %3, align 8
  %7 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %8 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = shl i64 1, %9
  %11 = mul i64 %10, 4
  store i64 %11, i64* %4, align 8
  %12 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %13 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %18 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %22 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %25 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(i32 %19, i64 %20, i32* %23, i32 %26)
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %30 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %32 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %37 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %40 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @devm_kfree(i32 %38, i32* %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %45 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
