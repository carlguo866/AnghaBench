; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_db_clear_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_db_clear_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32)* @switchtec_ntb_db_clear_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_db_clear_mask(%struct.ntb_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.switchtec_ntb*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %9 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %8)
  store %struct.switchtec_ntb* %9, %struct.switchtec_ntb** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %12 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %22 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %21, i32 0, i32 3
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %27 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %25, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %32 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %36 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %40 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @iowrite64(i32 %38, i32* %42)
  %44 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %45 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %44, i32 0, i32 3
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %20, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite64(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
