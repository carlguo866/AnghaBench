; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_check_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_check_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { i32 }

@REG_ADDR_MASK = common dso_local global i32 0, align 4
@REG_ADDR_EXT = common dso_local global i32 0, align 4
@PCA_PCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca953x_chip*, i32, i32)* @pca953x_check_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_check_register(%struct.pca953x_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pca953x_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %12 = call i32 @pca953x_bank_shift(%struct.pca953x_chip* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @REG_ADDR_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %8, align 4
  %17 = lshr i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @REG_ADDR_EXT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %29 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PCA_PCAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %52

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 8
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %3
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %52

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %48 = call i32 @NBANK(%struct.pca953x_chip* %47)
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %52

51:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %44, %34
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @pca953x_bank_shift(%struct.pca953x_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @NBANK(%struct.pca953x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
