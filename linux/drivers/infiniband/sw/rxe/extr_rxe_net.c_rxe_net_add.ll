; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_net_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_net_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rxe_dev = type { i32, %struct.net_device* }

@rxe_dev = common dso_local global i32 0, align 4
@ib_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_net_add(i8* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxe_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.rxe_dev* null, %struct.rxe_dev** %7, align 8
  %8 = load i32, i32* @rxe_dev, align 4
  %9 = load i32, i32* @ib_dev, align 4
  %10 = call %struct.rxe_dev* @ib_alloc_device(i32 %8, i32 %9)
  store %struct.rxe_dev* %10, %struct.rxe_dev** %7, align 8
  %11 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %12 = icmp ne %struct.rxe_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %19 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %18, i32 0, i32 1
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @rxe_add(%struct.rxe_dev* %20, i32 %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %29, i32 0, i32 0
  %31 = call i32 @ib_dealloc_device(i32* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.rxe_dev* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @rxe_add(%struct.rxe_dev*, i32, i8*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
