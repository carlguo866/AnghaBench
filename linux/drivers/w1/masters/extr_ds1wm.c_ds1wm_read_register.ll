; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ds1wm_read_register reg: %d, 32 bit val:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1wm_data*, i32)* @ds1wm_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_read_register(%struct.ds1wm_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ds1wm_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %7 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %12 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %38 [
    i32 0, label %14
    i32 1, label %22
    i32 2, label %30
  ]

14:                                               ; preds = %10
  %15 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %16 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 0
  %20 = add nsw i32 %17, %19
  %21 = call i32 @ioread8(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %10
  %23 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %24 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 1
  %28 = add nsw i32 %25, %27
  %29 = call i32 @ioread16be(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %10
  %31 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %32 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 2
  %36 = add nsw i32 %33, %35
  %37 = call i32 @ioread32be(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %10, %30, %22, %14
  br label %68

39:                                               ; preds = %2
  %40 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %41 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %67 [
    i32 0, label %43
    i32 1, label %51
    i32 2, label %59
  ]

43:                                               ; preds = %39
  %44 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %45 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 0
  %49 = add nsw i32 %46, %48
  %50 = call i32 @ioread8(i32 %49)
  store i32 %50, i32* %5, align 4
  br label %67

51:                                               ; preds = %39
  %52 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %53 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 1
  %57 = add nsw i32 %54, %56
  %58 = call i32 @ioread16(i32 %57)
  store i32 %58, i32* %5, align 4
  br label %67

59:                                               ; preds = %39
  %60 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %61 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 %63, 2
  %65 = add nsw i32 %62, %64
  %66 = call i32 @ioread32(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %39, %59, %51, %43
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %70 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ioread16be(i32) #1

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @ioread16(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
