; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to enable control connection: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_resume(%struct.gb_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_control*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_control* %0, %struct.gb_control** %3, align 8
  %5 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %6 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @gb_connection_enable_tx(%struct.TYPE_4__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %13 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @gb_connection_enable_tx(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
