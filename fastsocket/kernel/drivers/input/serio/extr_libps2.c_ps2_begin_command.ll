; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_begin_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_begin_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps2_begin_command(%struct.ps2dev* %0) #0 {
  %2 = alloca %struct.ps2dev*, align 8
  store %struct.ps2dev* %0, %struct.ps2dev** %2, align 8
  %3 = load %struct.ps2dev*, %struct.ps2dev** %2, align 8
  %4 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ps2dev*, %struct.ps2dev** %2, align 8
  %7 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @i8042_check_port_owner(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @i8042_lock_chip()
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i8042_check_port_owner(i32) #1

declare dso_local i32 @i8042_lock_chip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
