; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.tty_bufhead }
%struct.tty_bufhead = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }

@flush_to_ldisc = common dso_local global i32 0, align 4
@TTYB_DEFAULT_MEM_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_buffer_init(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.tty_bufhead*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %4 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %5 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i32 0, i32 0
  store %struct.tty_bufhead* %5, %struct.tty_bufhead** %3, align 8
  %6 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %7 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %6, i32 0, i32 8
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %10 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %9, i32 0, i32 5
  %11 = call i32 @tty_buffer_reset(i32* %10, i32 0)
  %12 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %13 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %12, i32 0, i32 5
  %14 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %15 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %14, i32 0, i32 7
  store i32* %13, i32** %15, align 8
  %16 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %17 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %16, i32 0, i32 5
  %18 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %19 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %18, i32 0, i32 6
  store i32* %17, i32** %19, align 8
  %20 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %21 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %20, i32 0, i32 4
  %22 = call i32 @init_llist_head(i32* %21)
  %23 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %24 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %23, i32 0, i32 3
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %27 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %26, i32 0, i32 2
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %30 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %29, i32 0, i32 1
  %31 = load i32, i32* @flush_to_ldisc, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load i32, i32* @TTYB_DEFAULT_MEM_LIMIT, align 4
  %34 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %35 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tty_buffer_reset(i32*, i32) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
