; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_free_xmit_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_free_xmit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_free_xmit_buf(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %3 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %4 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %7 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = call i32 @free_page(i64 %14)
  %16 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %17 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %20 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
