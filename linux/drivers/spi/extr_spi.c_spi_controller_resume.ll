; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_controller_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_controller_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"queue restart failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_controller_resume(%struct.spi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  %5 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %6 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %12 = call i32 @spi_start_queue(%struct.spi_controller* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %17 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @spi_start_queue(%struct.spi_controller*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
