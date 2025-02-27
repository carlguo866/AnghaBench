; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_234_gates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_234_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PXP_REG_HST_DISCARD_DOORBELLS = common dso_local global i32 0, align 4
@PXP_REG_HST_DISCARD_INTERNAL_WRITES = common dso_local global i32 0, align 4
@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_CONFIG_1_REG_BLOCK_DISABLE_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_BLOCK_DISABLE_0 = common dso_local global i32 0, align 4
@IGU_REG_BLOCK_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s gates #2, #3 and #4\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"closing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"opening\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_set_234_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_234_gates(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i32 @CHIP_IS_E1(%struct.bnx2x* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load i32, i32* @PXP_REG_HST_DISCARD_DOORBELLS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @REG_WR(%struct.bnx2x* %10, i32 %11, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* @PXP_REG_HST_DISCARD_INTERNAL_WRITES, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @REG_WR(%struct.bnx2x* %18, i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %9, %2
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = load i32, i32* @HC_REG_CONFIG_1, align 4
  %33 = call i32 @REG_RD(%struct.bnx2x* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i32, i32* @HC_REG_CONFIG_1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @HC_CONFIG_1_REG_BLOCK_DISABLE_1, align 4
  %41 = or i32 %39, %40
  br label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HC_CONFIG_1_REG_BLOCK_DISABLE_1, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i32 [ %41, %38 ], [ %46, %42 ]
  %49 = call i32 @REG_WR(%struct.bnx2x* %34, i32 %35, i32 %48)
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = load i32, i32* @HC_REG_CONFIG_0, align 4
  %52 = call i32 @REG_RD(%struct.bnx2x* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = load i32, i32* @HC_REG_CONFIG_0, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @HC_CONFIG_0_REG_BLOCK_DISABLE_0, align 4
  %60 = or i32 %58, %59
  br label %66

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HC_CONFIG_0_REG_BLOCK_DISABLE_0, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i32 [ %60, %57 ], [ %65, %61 ]
  %68 = call i32 @REG_WR(%struct.bnx2x* %53, i32 %54, i32 %67)
  br label %89

69:                                               ; preds = %26
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = load i32, i32* @IGU_REG_BLOCK_CONFIGURATION, align 4
  %72 = call i32 @REG_RD(%struct.bnx2x* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load i32, i32* @IGU_REG_BLOCK_CONFIGURATION, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE, align 4
  %80 = or i32 %78, %79
  br label %86

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  br label %86

86:                                               ; preds = %81, %77
  %87 = phi i32 [ %80, %77 ], [ %85, %81 ]
  %88 = call i32 @REG_WR(%struct.bnx2x* %73, i32 %74, i32 %87)
  br label %89

89:                                               ; preds = %86, %66
  %90 = load i32, i32* @NETIF_MSG_HW, align 4
  %91 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %97 = call i32 @DP(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %96)
  %98 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i8*) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
