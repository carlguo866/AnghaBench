; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa1_restore_cycle_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa1_restore_cycle_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"restore cycle bit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_wa1_restore_cycle_bit(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %3 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %4 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %9 = call i32 @trace_cdns3_wa1(%struct.cdns3_endpoint* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 0
  store i32 65535, i32* %13, align 8
  %14 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %15 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %20 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 1
  %25 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %26 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  br label %40

29:                                               ; preds = %7
  %30 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %31 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -2
  %36 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %37 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %18
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @trace_cdns3_wa1(%struct.cdns3_endpoint*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
