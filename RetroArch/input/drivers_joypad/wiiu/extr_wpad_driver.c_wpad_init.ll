; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_wpad_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_wpad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@hid_instance = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@wpad_driver = common dso_local global i32 0, align 4
@wpad_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wpad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpad_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hid_instance, i32 0, i32 0), align 8
  %6 = call i32 @pad_connection_find_vacant_pad(%struct.TYPE_3__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hid_instance, i32 0, i32 0), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @input_pad_connect(i32 %16, i32* @wpad_driver)
  %18 = call i32 (...) @wpad_poll()
  store i32 1, i32* @wpad_ready, align 4
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %10, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @pad_connection_find_vacant_pad(%struct.TYPE_3__*) #1

declare dso_local i32 @input_pad_connect(i32, i32*) #1

declare dso_local i32 @wpad_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
