; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_read_lid_handling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_read_lid_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sabi_commands }
%struct.sabi_commands = type { i32 }
%struct.sabi_data = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_laptop*)* @read_lid_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_lid_handling(%struct.samsung_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_laptop*, align 8
  %4 = alloca %struct.sabi_commands*, align 8
  %5 = alloca %struct.sabi_data, align 8
  %6 = alloca i32, align 4
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %3, align 8
  %7 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.sabi_commands* %10, %struct.sabi_commands** %4, align 8
  %11 = load %struct.sabi_commands*, %struct.sabi_commands** %4, align 8
  %12 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = call i32 @memset(%struct.sabi_data* %5, i32 0, i32 8)
  %20 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %21 = load %struct.sabi_commands*, %struct.sabi_commands** %4, align 8
  %22 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sabi_command(%struct.samsung_laptop* %20, i32 %23, %struct.sabi_data* %5, %struct.sabi_data* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %5, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %27, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.sabi_data*, i32, i32) #1

declare dso_local i32 @sabi_command(%struct.samsung_laptop*, i32, %struct.sabi_data*, %struct.sabi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
