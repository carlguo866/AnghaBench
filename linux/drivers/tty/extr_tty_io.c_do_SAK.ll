; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_do_SAK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_do_SAK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_SAK(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %3 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %4 = icmp ne %struct.tty_struct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = call i32 @schedule_work(i32* %8)
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
