; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_get_gate_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_get_gate_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio200_subdev_8254 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio200_subdev_8254*, i32)* @dio200_get_gate_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_get_gate_src(%struct.dio200_subdev_8254* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dio200_subdev_8254*, align 8
  %5 = alloca i32, align 4
  store %struct.dio200_subdev_8254* %0, %struct.dio200_subdev_8254** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %4, align 8
  %7 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %23

15:                                               ; preds = %11
  %16 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %4, align 8
  %17 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %14, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
