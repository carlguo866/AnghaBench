; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i32, %struct.pcnet32_rx_head* }
%struct.pcnet32_rx_head = type { i8*, i8* }

@NEG_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pcnet32_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcnet32_rx_head*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %9)
  store %struct.pcnet32_private* %10, %struct.pcnet32_private** %5, align 8
  %11 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %12 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %15 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %19 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %18, i32 0, i32 2
  %20 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %20, i64 %22
  store %struct.pcnet32_rx_head* %23, %struct.pcnet32_rx_head** %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %30 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @le16_to_cpu(i8* %31)
  %33 = trunc i64 %32 to i16
  %34 = sext i16 %33 to i32
  %35 = icmp sge i32 %34, 0
  br label %36

36:                                               ; preds = %28, %24
  %37 = phi i1 [ false, %24 ], [ %35, %28 ]
  br i1 %37, label %38, label %68

38:                                               ; preds = %36
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %41 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pcnet32_rx_entry(%struct.net_device* %39, %struct.pcnet32_private* %40, %struct.pcnet32_rx_head* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @NEG_BUF_SIZE, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %49 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = call i32 (...) @wmb()
  %51 = call i8* @cpu_to_le16(i32 32768)
  %52 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %53 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %55 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %59 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %63 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %62, i32 0, i32 2
  %64 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %64, i64 %66
  store %struct.pcnet32_rx_head* %67, %struct.pcnet32_rx_head** %7, align 8
  br label %24

68:                                               ; preds = %36
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @pcnet32_rx_entry(%struct.net_device*, %struct.pcnet32_private*, %struct.pcnet32_rx_head*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
