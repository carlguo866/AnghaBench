; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_show_llink_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_show_llink_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.temac_local = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%.8x%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temac_show_llink_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_show_llink_regs(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.temac_local*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.net_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.temac_local* @netdev_priv(%struct.net_device* %13)
  store %struct.temac_local* %14, %struct.temac_local** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 17
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load %struct.temac_local*, %struct.temac_local** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @temac_dma_in32(%struct.temac_local* %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = srem i32 %26, 8
  %28 = icmp eq i32 %27, 7
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i64 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %30)
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = call i64 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @temac_dma_in32(%struct.temac_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
