; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_check_relative_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_check_relative_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }

@LAST_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*, i32, i32, i32*)* @check_relative_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_relative_address(%struct.fsi_master_gpio* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %13 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @LAST_ADDR_INVALID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 21
  %22 = and i32 %21, 3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %41

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 2097151
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, -256
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %26
  store i32 0, i32* %5, align 4
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %37, %25, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
