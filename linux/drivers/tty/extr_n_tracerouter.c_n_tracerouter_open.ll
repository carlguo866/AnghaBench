; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tracerouter.c_n_tracerouter_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tracerouter.c_n_tracerouter_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.tty_struct = type { i32, %struct.TYPE_2__* }

@EEXIST = common dso_local global i32 0, align 4
@routelock = common dso_local global i32 0, align 4
@tr_data = common dso_local global %struct.TYPE_2__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@RECEIVE_ROOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @n_tracerouter_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tracerouter_open(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load i32, i32* @EEXIST, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @mutex_lock(i32* @routelock)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = call i32* @tty_kref_get(%struct.tty_struct* %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %11
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load i32, i32* @RECEIVE_ROOM, align 4
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %20
  br label %35

35:                                               ; preds = %34, %1
  %36 = call i32 @mutex_unlock(i32* @routelock)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @tty_kref_get(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
