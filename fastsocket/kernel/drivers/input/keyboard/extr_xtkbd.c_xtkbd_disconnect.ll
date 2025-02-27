; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_xtkbd.c_xtkbd_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_xtkbd.c_xtkbd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.xtkbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @xtkbd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtkbd_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.xtkbd*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.xtkbd* @serio_get_drvdata(%struct.serio* %4)
  store %struct.xtkbd* %5, %struct.xtkbd** %3, align 8
  %6 = load %struct.serio*, %struct.serio** %2, align 8
  %7 = call i32 @serio_close(%struct.serio* %6)
  %8 = load %struct.serio*, %struct.serio** %2, align 8
  %9 = call i32 @serio_set_drvdata(%struct.serio* %8, i32* null)
  %10 = load %struct.xtkbd*, %struct.xtkbd** %3, align 8
  %11 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @input_unregister_device(i32 %12)
  %14 = load %struct.xtkbd*, %struct.xtkbd** %3, align 8
  %15 = call i32 @kfree(%struct.xtkbd* %14)
  ret void
}

declare dso_local %struct.xtkbd* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.xtkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
