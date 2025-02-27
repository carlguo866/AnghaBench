; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_debiwrite_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_debiwrite_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@DEBI_COMMAND = common dso_local global i32 0, align 4
@DEBI_CONFIG = common dso_local global i32 0, align 4
@DEBI_PAGE = common dso_local global i32 0, align 4
@DEBI_AD = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*, i32, i32, i32, i32, i32)* @ttpci_budget_debiwrite_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttpci_budget_debiwrite_nolock(%struct.budget* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.budget*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.saa7146_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.budget*, %struct.budget** %8, align 8
  %17 = getelementptr inbounds %struct.budget, %struct.budget* %16, i32 0, i32 0
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %17, align 8
  store %struct.saa7146_dev* %18, %struct.saa7146_dev** %14, align 8
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %19, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %7, align 4
  br label %59

26:                                               ; preds = %6
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %28 = load i32, i32* @DEBI_COMMAND, align 4
  %29 = load i32, i32* %11, align 4
  %30 = shl i32 %29, 17
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 65535
  %33 = or i32 %30, %32
  %34 = call i32 @saa7146_write(%struct.saa7146_dev* %27, i32 %28, i32 %33)
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %36 = load i32, i32* @DEBI_CONFIG, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @saa7146_write(%struct.saa7146_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %40 = load i32, i32* @DEBI_PAGE, align 4
  %41 = call i32 @saa7146_write(%struct.saa7146_dev* %39, i32 %40, i32 0)
  %42 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %43 = load i32, i32* @DEBI_AD, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @saa7146_write(%struct.saa7146_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %47 = load i32, i32* @MC2, align 4
  %48 = call i32 @saa7146_write(%struct.saa7146_dev* %46, i32 %47, i32 131074)
  %49 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %26
  %55 = load i32, i32* %15, align 4
  br label %57

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %24
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
