; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_init_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_init_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, %struct.ksz_port_mib* }
%struct.ksz_port_mib = type { i64, i64, i32*, i32 }

@PORT_COUNTER_NUM = common dso_local global i64 0, align 8
@TOTAL_PORT_COUNTER_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32)* @port_init_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_init_cnt(%struct.ksz_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_port_mib*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 1
  %8 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %8, i64 %10
  store %struct.ksz_port_mib* %11, %struct.ksz_port_mib** %5, align 8
  %12 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %13 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %15 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %38, %19
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %24 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %27 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %30 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = call i32 @port_r_mib_cnt(%struct.ksz_hw* %21, i32 %22, i64 %25, i32* %32)
  %34 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %35 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %40 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %20, label %44

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %55 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %58 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @port_r_mib_pkt(%struct.ksz_hw* %52, i32 %53, i32 %56, i32* %61)
  br label %63

63:                                               ; preds = %51, %45
  %64 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %65 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = load i32, i32* @TOTAL_PORT_COUNTER_NUM, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(i8* %67, i32 0, i32 %71)
  %73 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %74 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  ret void
}

declare dso_local i32 @port_r_mib_cnt(%struct.ksz_hw*, i32, i64, i32*) #1

declare dso_local i32 @port_r_mib_pkt(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
