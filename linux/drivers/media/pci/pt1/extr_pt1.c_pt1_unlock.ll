; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"could not unlock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_unlock(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %5 = load %struct.pt1*, %struct.pt1** %3, align 8
  %6 = call i32 @pt1_write_reg(%struct.pt1* %5, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.pt1*, %struct.pt1** %3, align 8
  %12 = call i32 @pt1_read_reg(%struct.pt1* %11, i32 0)
  %13 = and i32 %12, -2147483648
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

16:                                               ; preds = %10
  %17 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.pt1*, %struct.pt1** %3, align 8
  %23 = getelementptr inbounds %struct.pt1, %struct.pt1* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @pt1_write_reg(%struct.pt1*, i32, i32) #1

declare dso_local i32 @pt1_read_reg(%struct.pt1*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
