; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_set_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_set_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_handler = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx2341x_handler_set_busy(%struct.cx2341x_handler* %0, i32 %1) #0 {
  %3 = alloca %struct.cx2341x_handler*, align 8
  %4 = alloca i32, align 4
  store %struct.cx2341x_handler* %0, %struct.cx2341x_handler** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %6 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @v4l2_ctrl_grab(i32 %7, i32 %8)
  %10 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %11 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @v4l2_ctrl_grab(i32 %12, i32 %13)
  %15 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %16 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @v4l2_ctrl_grab(i32 %17, i32 %18)
  %20 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %21 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @v4l2_ctrl_grab(i32 %22, i32 %23)
  %25 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %26 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @v4l2_ctrl_grab(i32 %27, i32 %28)
  %30 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %31 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @v4l2_ctrl_grab(i32 %32, i32 %33)
  %35 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %36 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @v4l2_ctrl_grab(i32 %37, i32 %38)
  %40 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %41 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @v4l2_ctrl_grab(i32 %42, i32 %43)
  %45 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %46 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @v4l2_ctrl_grab(i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
