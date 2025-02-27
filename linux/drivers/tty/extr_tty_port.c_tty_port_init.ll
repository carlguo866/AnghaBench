; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@default_client_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_init(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %3 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %4 = call i32 @memset(%struct.tty_port* %3, i32 0, i32 48)
  %5 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %6 = call i32 @tty_buffer_init(%struct.tty_port* %5)
  %7 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %8 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %7, i32 0, i32 8
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %11 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 7
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %14 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %13, i32 0, i32 6
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %17 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 5
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %20 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 50, %22
  %24 = sdiv i32 %23, 100
  %25 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %26 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 3000, %27
  %29 = sdiv i32 %28, 100
  %30 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %31 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %33 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %32, i32 0, i32 3
  store i32* @default_client_ops, i32** %33, align 8
  %34 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 2
  %36 = call i32 @kref_init(i32* %35)
  ret void
}

declare dso_local i32 @memset(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_buffer_init(%struct.tty_port*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
